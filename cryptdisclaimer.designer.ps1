$DISCLAIMER = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.PictureBox]$PictureBox1 = $null
[System.Windows.Forms.Button]$DiscBtnAccpt = $null
[System.Windows.Forms.Button]$DiscBtnDecl = $null
[System.Windows.Forms.Label]$Label1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'cryptdisclaimer.resources.ps1')
$PictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
$DiscBtnAccpt = (New-Object -TypeName System.Windows.Forms.Button)
$DiscBtnDecl = (New-Object -TypeName System.Windows.Forms.Button)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
([System.ComponentModel.ISupportInitialize]$PictureBox1).BeginInit()
$DISCLAIMER.SuspendLayout()
#
#PictureBox1
#
$PictureBox1.Image = ([System.Drawing.Image]$resources.'PictureBox1.Image')
$PictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$PictureBox1.Name = [System.String]'PictureBox1'
$PictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]303,[System.Int32]295))
$PictureBox1.TabIndex = [System.Int32]1
$PictureBox1.TabStop = $false
#
#DiscBtnAccpt
#
$DiscBtnAccpt.BackColor = [System.Drawing.Color]::Gold
$DiscBtnAccpt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]483))
$DiscBtnAccpt.Name = [System.String]'DiscBtnAccpt'
$DiscBtnAccpt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]128,[System.Int32]44))
$DiscBtnAccpt.TabIndex = [System.Int32]2
$DiscBtnAccpt.Text = [System.String]'Accept'
$DiscBtnAccpt.UseVisualStyleBackColor = $false
$DiscBtnAccpt.add_Click($Accept)
#
#DiscBtnDecl
#
$DiscBtnDecl.BackColor = [System.Drawing.Color]::Gold
$DiscBtnDecl.DialogResult = [System.Windows.Forms.DialogResult]::Abort
$DiscBtnDecl.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]187,[System.Int32]483))
$DiscBtnDecl.Name = [System.String]'DiscBtnDecl'
$DiscBtnDecl.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]128,[System.Int32]44))
$DiscBtnDecl.TabIndex = [System.Int32]3
$DiscBtnDecl.Text = [System.String]'Decline'
$DiscBtnDecl.UseVisualStyleBackColor = $false
#
#Label1
#
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.ForeColor = [System.Drawing.Color]::White
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]310))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]303,[System.Int32]170))
$Label1.TabIndex = [System.Int32]4
$Label1.Text = [System.String]'Providence is an Active Directory Password Checker and a
 Powershell Script Encryptor / Decryptor 

DISCLAIMER: THIS TOOL IS FOR ETHICAL USES ONLY.
'
$Label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$Label1.add_Click($Label1_Click)
#
#DISCLAIMER
#
$DISCLAIMER.BackColor = [System.Drawing.Color]::Black
$DISCLAIMER.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]327,[System.Int32]539))
$DISCLAIMER.Controls.Add($Label1)
$DISCLAIMER.Controls.Add($DiscBtnDecl)
$DISCLAIMER.Controls.Add($DiscBtnAccpt)
$DISCLAIMER.Controls.Add($PictureBox1)
$DISCLAIMER.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$DISCLAIMER.Text = [System.String]'NOTICE'
([System.ComponentModel.ISupportInitialize]$PictureBox1).EndInit()
$DISCLAIMER.ResumeLayout($false)
Add-Member -InputObject $DISCLAIMER -Name PictureBox1 -Value $PictureBox1 -MemberType NoteProperty
Add-Member -InputObject $DISCLAIMER -Name DiscBtnAccpt -Value $DiscBtnAccpt -MemberType NoteProperty
Add-Member -InputObject $DISCLAIMER -Name DiscBtnDecl -Value $DiscBtnDecl -MemberType NoteProperty
Add-Member -InputObject $DISCLAIMER -Name Label1 -Value $Label1 -MemberType NoteProperty
}
. InitializeComponent
