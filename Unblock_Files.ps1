# Get the path of the folder that contains the currently executing script
$folderPath = $PSScriptRoot

# Write the folder path to the console
Write-Output "Unblocking files in folder: $folderPath"

# Use the Get-ChildItem cmdlet to recursively find all files in the folder and its subdirectories
try {
    Get-ChildItem -Path $folderPath -Recurse -File | ForEach-Object {
        
        # Check if the file is blocked
        #$isBlocked = Get-ItemPropertyValue -Path $_.FullName -Name "Zone.Identifier" -ErrorAction SilentlyContinue

        #if ($isBlocked) {
            # Use the Unblock-File cmdlet to unblock the file
            Unblock-File -Path $_.FullName
            Write-Output "Unblocked file: $($_.FullName)"
        #}
    }
}
catch {
    Write-Error "An error occurred: $_"
}



