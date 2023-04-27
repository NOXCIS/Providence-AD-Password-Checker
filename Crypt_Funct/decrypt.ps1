function Get-Dnc {

$DcrptProgressBar.Value = 20

# Get the encrypted string from the file
$encryptedString = Get-Content -Path $DcrptTextBox.Text

$DcrptProgressBar.Value = 40

#echo $encryptedString
# Convert the encrypted string to a secure string

$secureString = ConvertTo-SecureString -String $encryptedString
 
$DcrptProgressBar.Value = 60

# Convert the secure string to a plain text string
$script = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureString))

$DcrptProgressBar.Value = 80

Start-Sleep -Seconds 0.5

$DcrptProgressBar.Value = 100

# Run the decrypted script
Start-Sleep -Seconds 0.7
$DcrptProgressBar.Value = 0
Invoke-Expression -Command $script


# Close the form
#$form.Close()
 


}