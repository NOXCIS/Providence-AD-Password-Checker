function Get-Enc {


# Get the plaintext string from the file
$scriptPath1 = $EcrptTextBox.Text
if (-not (Test-Path $scriptPath1)) {
    Write-Error "Script file not found at path '$scriptPath1'"
    return
}

$EcrptProgressBar.Value = 20

$script1 = Get-Content -Path $scriptPath1 -Raw

# Convert the script contents to a secure string
$secureString1 = ConvertTo-SecureString -String $script1 -AsPlainText -Force
if (-not $secureString1) {
    Write-Error "Failed to convert script to secure string"
    return
}

$EcrptProgressBar.Value = 40
# Get the input file name without extension
$inputFileName1= [System.IO.Path]::GetFileNameWithoutExtension($scriptPath1)

# Set the output file path to a folder in the Documents folder with the same name as the input file
$outputFolderPath1 = Join-Path -Path $env:USERPROFILE\Documents -ChildPath $inputFileName1
if (-not (Test-Path $outputFolderPath1)) {
    New-Item -ItemType Directory -Path $outputFolderPath1 | Out-Null
}

$EcrptProgressBar.Value = 60

$outputFileName1 = $inputFileName1 + ".txt"
$outputFilePath1 = Join-Path -Path $outputFolderPath1 -ChildPath  $outputFileName1
$EcrptProgressBar.Value = 80
# Convert the secure string to an encrypted standard string and write it to the output file
$encryptedString1 = ConvertFrom-SecureString -SecureString $secureString1
if (-not $encryptedString1) {
    Write-Error "Failed to convert secure string to encrypted string"
    return
}
$encryptedString1 | Out-File -FilePath $outputFilePath1
$EcrptProgressBar.Value = 100
Start-Sleep -Seconds 5
$EcrptProgressBar.Value = 0
#$popupDialog = New-Object -ComObject Wscript.Shell
#$popupDialog.Popup("Success!",0,"Success",0x1)

#Write-Output "Encrypted script written to $outputFilePath1"

}