function Get-Providence {

$DiscBtnAccpt.DialogResult = [System.Windows.Forms.DialogResult]::Abort

# DECRYPTION SECTION vvv ##########################################################
$BtnDcrptFileSel = {
    $DcrptProgressBar.Value = 0
    $dialog = New-Object System.Windows.Forms.OpenFileDialog
    $dialog.InitialDirectory = [Environment]::GetFolderPath('MyDocuments')
    $dialog.Title = "Select Encrypted Script"
    $dialog.Filter = "Text Files (*.txt)|*.txt"
        if ($dialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
        $DcrptTextBox.text = $dialog.FileName
        Write-Output $DcrptTextBox.Text
        }
}

$BtnDcrptRun = {

    $(Get-Dnc)

}


# DECRYPTION SECTION ^^^ ###########################################################


# ENCRYPTION SECTION vvv ###########################################################


$BtnEcrptFileSel = {

    $EcrptProgressBar.Value = 0
    $dialog1 = New-Object System.Windows.Forms.OpenFileDialog
    $dialog1.InitialDirectory = [Environment]::GetFolderPath('MyDocuments')
    $dialog1.Title = "Select Encrypted Script"
    $dialog1.Filter = "PowerShell Scripts (*.ps1)|*.ps1"
        if ($dialog1.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
            $EcrptTextBox.text = $dialog1.FileName
            Write-Output $EcrptTextBox.Text
        }    
}

$BtnEcrptRun = { 

        $(Get-Enc)
    
}


# ENCRYPTION SECTION ^^^ ###########################################################



$BtnPassAUTH = {

    $(Get-PA_GUI) 
    
}



Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'cryptdisclaimer.designer.ps1')
. (Join-Path $PSScriptRoot 'providence.designer.ps1')
. (Join-Path $PSScriptRoot 'Crypt_Funct\decrypt.ps1')
. (Join-Path $PSScriptRoot 'Crypt_Funct\encrypt.ps1')
. (Join-Path $PSScriptRoot 'PassAUTH\PassAUTH.ps1')
. (Join-Path $PSScriptRoot 'Sec889\Section889.ps1')
. (Join-Path $PSScriptRoot 'PwnedAccts\PwnedAccounts.ps1')
. (Join-Path $PSScriptRoot 'PassAUTH\PA_form.ps1')
$Providence.ShowDialog()

}