$Label1_Click = {
}
$Accept = {
}
Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'cryptdisclaimer.designer.ps1')
$Form1.ShowDialog()