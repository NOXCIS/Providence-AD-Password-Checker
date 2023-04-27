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

Add-Type -AssemblyName System.Windows.Forms
$resources = . (Join-Path $PSScriptRoot 'cryptdisclaimer.resources.ps1')
             . (Join-Path $PSScriptRoot 'providence.ps1')
             . (Join-Path $PSScriptRoot 'cryptdisclaimer.designer.ps1')
            


$form = New-Object System.Windows.Forms.Form
$form.BackColor = [System.Drawing.Color]::Black
$form.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]327,[System.Int32]539))
$form.Text = "Script Confirmation"
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen

$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.ForeColor = [System.Drawing.Color]::White
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]310))
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]303,[System.Int32]170))
$Label1.TabIndex = [System.Int32]4
$Label1.Text = [System.String]$resources.'Label1.Text'
$Label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter

$PictureBox1.Image = ([System.Drawing.Image]$resources.'PictureBox1.Image')
$PictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$PictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]303,[System.Int32]295))
$PictureBox1.TabIndex = [System.Int32]1
$PictureBox1.TabStop = $false

$yesButton = New-Object System.Windows.Forms.Button
$yesButton.BackColor = [System.Drawing.Color]::Gold
$yesButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]483))
$yesButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]128,[System.Int32]44))
$yesButton.TabIndex = [System.Int32]2
$yesButton.Text = "Accept"
$yesButton.DialogResult = [System.Windows.Forms.DialogResult]::Yes

$noButton = New-Object System.Windows.Forms.Button
$noButton.BackColor = [System.Drawing.Color]::Gold
$noButton.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]187,[System.Int32]483))
$noButton.Name = [System.String]'DiscBtnDecl'
$noButton.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]128,[System.Int32]44))
$noButton.TabIndex = [System.Int32]3
$noButton.Text = "Decline"
$noButton.DialogResult = [System.Windows.Forms.DialogResult]::No

$form.AcceptButton = $yesButton
$form.CancelButton = $noButton
$form.Controls.Add($PictureBox1)
$form.Controls.Add($Label1)
$form.Controls.Add($noButton)
$form.Controls.Add($yesButton)
$form.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$form.Text = [System.String]'NOTICE'

$result = $form.ShowDialog()

if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
    # User clicked "Yes" - continue running the script
   
    $(Get-Providence)

}
else {
    # User clicked "No" - abort the script and close
    Write-Host "User declined. Aborting the script..."
    exit
}
