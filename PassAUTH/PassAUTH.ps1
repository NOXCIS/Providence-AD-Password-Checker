function Get-Creds {
# Import kernel32.dll and define window class with Hide method
Add-Type @"
    using System;
    using System.Runtime.InteropServices;
    public class Win32 {
        [DllImport("kernel32.dll")]
        public static extern IntPtr GetConsoleWindow();
        [DllImport("user32.dll")]
        public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
        public const int SW_HIDE = 0;
        public const int SW_SHOW = 5;
        public static void HideConsoleWindow() {
            IntPtr hWnd = GetConsoleWindow();
            if (hWnd != IntPtr.Zero) {
                ShowWindow(hWnd, SW_HIDE);
            }
        }
    }
"@

# Hide the console window
[Win32]::HideConsoleWindow()
    

    

#WARNING
#If Active Directory Domain/Lightweight Services is not installed on your system this WILL NOT WORK.
Remove-Variable * -ErrorAction SilentlyContinue; Remove-Module *; $error.Clear(); 

Import-Module ActiveDirectory
Add-Type -AssemblyName System.Windows.Forms


# Open the Windows File Explorer dialog for the user to select a file
    $dialog = New-Object System.Windows.Forms.OpenFileDialog
    $dialog.InitialDirectory = [Environment]::GetFolderPath('MyDocuments')
    $dialog.Multiselect = $true

    # Show the dialog and check if the user selected a file
    $result = $dialog.ShowDialog()
    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        # If the user selected a file, store the file path in a variable
        $filePath = $dialog.FileName
        Write-Host "Selected file: $filePath"
    } else {
        # If the user didn't select a file, output an error message to the console
        Write-Host "No file selected"
        exit
    }

# Get the Extension for the file
$Extension = [System.IO.Path]::GetExtension($filePath)

# Takes the File Name and creates a Directory under Documents
$OutputFolder = [System.IO.Path]::GetFileNameWithoutExtension($filePath)

# Gets Current User for output files
$currentuser = (whoami).Split('\')[1]

# Set Folder which to save them in
$FolderPath = "C:\Users\" + $currentuser + "\Documents\" + "$OutputFolder"

# Test to see if folder exists
$TestPath = Test-Path $FolderPath
if (!$TestPath){
    New-Item -Path $FolderPath -ItemType Directory
}

# Sets the Output Directory and file
$outputFilePath = "C:\Users\" + $currentuser + "\Documents\" + $OutputFolder + "\" + $OutputFolder + ".csv"


# If File is a PDF
if($Extension -like ".pdf"){
    $wdshort = [System.IO.Path]::GetFileNameWithoutExtension($filepath)
   
    Add-Type -AssemblyName System.IO
    Add-Type -AssemblyName Microsoft.Office.Interop.Word

    # Create a Word Application object
    $wordApp = New-Object -ComObject Word.Application
    # Open the PDF file in Word
    $doc = $wordApp.Documents.Open($filePath, $false, $true)
    $txtOut = "C:\Users\" + $currentuser + "\Downloads\" + $wdshort + ".txt"
    # Save the document as plain text
    $doc.SaveAs([ref] $txtOut, [ref] 2)

    # Close the document and quit Word
    $doc.Close()
    $wordApp.Quit()

    # Read the plain text file into a string variable
    $txtContent = Get-Content $txtOut -Raw

    # Split the string variable into an array of words
    $words = $txtContent.Split()

    # Join the array of words with newline characters
    $newlineContent = $words -join "`n"

    # Write the modified string to the output text file
    Set-Content -Path $txtOut -Value $newlineContent

    $filePath = $txtOut
}


# Create a new instance of Excel
$excel = New-Object -ComObject Excel.Application

# Disable alerts and screen updates to improve performance
$excel.DisplayAlerts = $false
$excel.ScreenUpdating = $false

# Open the input file in Excel
$workbook = $excel.Workbooks.Open($filePath)

# Get the first worksheet in the workbook
$worksheet = $workbook.Worksheets.Item(1)

# Insert New Row into worksheet
$xlShiftDown = -4121
$newRow = $worksheet.Cells.item(1,1).entireRow
$active = $newRow.activate()
$active = $newRow.insert($xlShiftDown)


# Add the header "Email:Password" to column A
$worksheet.Cells.Item(1, 1).Value2 = "Email:Password"

# Save the workbook as a CSV file with UTF-8 encoding
$workbook.SaveAs($outputFilePath, 6)  # 6 corresponds to the xlCSVUTF8 format

$workbook.Close($false)
$excel.Quit()

# Load the contents of the CSV file into an array of objects
$data = Import-Csv -Path $outputFilePath -Delimiter ":"

# Initialize empty arrays for each output file
$match = @()
$inactive = @()
$activeNomatch = @()
$notFound = @()
# Specify if you want to see errors or not (Commit Out if you want to see errors)
$ErrorActionPreference = 'silentlycontinue'

# Loop through each username and password in the .csv file
foreach ($row in $data) {
    $username = $row.Email
    $password = ConvertTo-SecureString $row.Password -AsPlainText -Force

    # Calculate percentage complete and update progress bar
    $index = [array]::IndexOf($data, $row)
    $percentComplete = ($index + 1) / $data.Count * 100
    $PA_ProgressBar.Value = $percentComplete

    # Check if the username exists in Active Directory
    if (Get-ADUser -Filter {UserPrincipalName -eq $username} ) {
        
        $getuser = Get-ADUser -Filter {UserPrincipalName -eq $username} -Properties SamAccountName 
        $samaccountname = $getuser.SamAccountName
        $userEn = $getuser.Enabled
                       
        # If the User is enabled check the password matches
        if ($userEn){
            $cred = New-Object System.Management.Automation.PSCredential ($samaccountname, $password) 
            $passwordMatches = Get-ADUser -Identity $samaccountname -Credential $cred
            #Checks to see if password matches
            if ($passwordMatches){
                # If the password matches, add the username to the matching users array
                $match += $username
                Write-Host "Success" $username
                $PA_ListBox.Items.Add($username)  
                Write-Output $PA_ListBox.text
            } else {
                # If the password does not match, add the username to the ActiveNoMatch not found array
                $activeNoMatch += $username
            }
        } else {
            #If User is not Enabled then add them to ActiveNoMatch
            $inactive += $username
        }
    } else {
        # If the username does not exist in Active Directory, add the username to the users not found array
        $notFound += $username
    }
}



# Create the Paths for Output
$matchesPath = "C:\Users\" + $currentuser + "\Documents\" + $OutputFolder + "\Password_matches.txt"
$activeNoMatchPath = "C:\Users\" + $currentuser + "\Documents\" + $OutputFolder + "\Password_no_match.txt"
$inactivePath = "C:\Users\" + $currentuser + "\Documents\" + $OutputFolder + "\Disabled_users.txt"
$notfoundPath = "C:\Users\" + $currentuser + "\Documents\" + $OutputFolder + "\Not_found_in_AD.txt"

# Output the results to .txt files
$matches | Out-File $matchesPath
$activeNoMatch | Out-File $activeNoMatchPath
$inactive | Out-File $inactivePath
$notFound | Out-File $notfoundPath

#Read-Host -Prompt "Press Enter to Exit"

}