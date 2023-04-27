$PA_GUI = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$PA_Label = $null
[System.Windows.Forms.PictureBox]$PA_PictureBox = $null
[System.Windows.Forms.Panel]$PA_Panel = $null
[System.Windows.Forms.Label]$Label = $null
[System.Windows.Forms.ListBox]$PA_ListBox = $null
[System.Windows.Forms.ProgressBar]$PA_ProgressBar = $null
[System.Windows.Forms.Button]$PA_Browse = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'PA_form.resources.ps1')
$PA_Label = (New-Object -TypeName System.Windows.Forms.Label)
$PA_PictureBox = (New-Object -TypeName System.Windows.Forms.PictureBox)
$PA_Panel = (New-Object -TypeName System.Windows.Forms.Panel)
$Label = (New-Object -TypeName System.Windows.Forms.Label)
$PA_ListBox = (New-Object -TypeName System.Windows.Forms.ListBox)
$PA_ProgressBar = (New-Object -TypeName System.Windows.Forms.ProgressBar)
$PA_Browse = (New-Object -TypeName System.Windows.Forms.Button)
([System.ComponentModel.ISupportInitialize]$PA_PictureBox).BeginInit()
$PA_Panel.SuspendLayout()
$PA_GUI.SuspendLayout()
#
#PA_Label
#
$PA_Label.BackColor = [System.Drawing.Color]::Black
$PA_Label.ForeColor = [System.Drawing.Color]::White
$PA_Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]288))
$PA_Label.Name = [System.String]'PA_Label'
$PA_Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]289,[System.Int32]23))
$PA_Label.TabIndex = [System.Int32]11
$PA_Label.Text = [System.String]'Authored By: Shamar Lee and Avery Hof'
$PA_Label.add_Click($Label1_Click)
#
#PA_PictureBox
#
$PA_PictureBox.Anchor = [System.Windows.Forms.AnchorStyles]::None
$PA_PictureBox.Image = ([System.Drawing.Image]$resources.'PA_PictureBox.Image')
$PA_PictureBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]12))
$PA_PictureBox.Name = [System.String]'PA_PictureBox'
$PA_PictureBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]291,[System.Int32]303))
$PA_PictureBox.TabIndex = [System.Int32]12
$PA_PictureBox.TabStop = $false
#
#PA_Panel
#
$PA_Panel.Controls.Add($Label)
$PA_Panel.Controls.Add($PA_ListBox)
$PA_Panel.Controls.Add($PA_Label)
$PA_Panel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]356))
$PA_Panel.Name = [System.String]'PA_Panel'
$PA_Panel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]315))
$PA_Panel.TabIndex = [System.Int32]13
#
#Label
#
$Label.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label.ForeColor = [System.Drawing.Color]::White
$Label.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]3))
$Label.Name = [System.String]'Label'
$Label.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]292,[System.Int32]23))
$Label.TabIndex = [System.Int32]12
$Label.Text = [System.String]'Successful Logins'
#
#PA_ListBox
#
$PA_ListBox.FormattingEnabled = $true
$PA_ListBox.ItemHeight = [System.Int32]21
$PA_ListBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]1,[System.Int32]29))
$PA_ListBox.Name = [System.String]'PA_ListBox'
$PA_ListBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]291,[System.Int32]256))
$PA_ListBox.TabIndex = [System.Int32]1
#
#PA_ProgressBar
#
$PA_ProgressBar.ForeColor = [System.Drawing.Color]::Gold
$PA_ProgressBar.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]323))
$PA_ProgressBar.MarqueeAnimationSpeed = [System.Int32]10
$PA_ProgressBar.Name = [System.String]'PA_ProgressBar'
$PA_ProgressBar.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]194,[System.Int32]27))
$PA_ProgressBar.Style = [System.Windows.Forms.ProgressBarStyle]::Continuous
$PA_ProgressBar.TabIndex = [System.Int32]14
#
#PA_Browse
#
$PA_Browse.BackColor = [System.Drawing.Color]::Gold
$PA_Browse.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]213,[System.Int32]323))
$PA_Browse.Name = [System.String]'PA_Browse'
$PA_Browse.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]91,[System.Int32]27))
$PA_Browse.TabIndex = [System.Int32]15
$PA_Browse.Text = [System.String]'Browse'
$PA_Browse.UseVisualStyleBackColor = $false
$PA_Browse.add_Click($PA_Run)
#
#PA_GUI
#
$PA_GUI.AutoSize = $true
$PA_GUI.BackColor = [System.Drawing.SystemColors]::MenuText
$PA_GUI.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]316,[System.Int32]681))
$PA_GUI.Controls.Add($PA_Browse)
$PA_GUI.Controls.Add($PA_ProgressBar)
$PA_GUI.Controls.Add($PA_Panel)
$PA_GUI.Controls.Add($PA_PictureBox)
$PA_GUI.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$PA_GUI.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$PA_GUI.MaximizeBox = $false
$PA_GUI.Text = [System.String]'PassAUTH'
$PA_GUI.add_Load($PA_GUI_Load)
([System.ComponentModel.ISupportInitialize]$PA_PictureBox).EndInit()
$PA_Panel.ResumeLayout($false)
$PA_GUI.ResumeLayout($false)
Add-Member -InputObject $PA_GUI -Name PA_Label -Value $PA_Label -MemberType NoteProperty
Add-Member -InputObject $PA_GUI -Name PA_PictureBox -Value $PA_PictureBox -MemberType NoteProperty
Add-Member -InputObject $PA_GUI -Name PA_Panel -Value $PA_Panel -MemberType NoteProperty
Add-Member -InputObject $PA_GUI -Name Label -Value $Label -MemberType NoteProperty
Add-Member -InputObject $PA_GUI -Name PA_ListBox -Value $PA_ListBox -MemberType NoteProperty
Add-Member -InputObject $PA_GUI -Name PA_ProgressBar -Value $PA_ProgressBar -MemberType NoteProperty
Add-Member -InputObject $PA_GUI -Name PA_Browse -Value $PA_Browse -MemberType NoteProperty
}
. InitializeComponent
