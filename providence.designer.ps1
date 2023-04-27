$Providence = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$EcrptRun = $null
[System.Windows.Forms.ProgressBar]$EcrptProgressBar = $null
[System.Windows.Forms.Label]$DcrptLb = $null
[System.Windows.Forms.Button]$EcrptBtnBrows = $null
[System.Windows.Forms.TextBox]$DcrptTextBox = $null
[System.Windows.Forms.Button]$DcrptBtnBrows = $null
[System.Windows.Forms.TextBox]$EcrptTextBox = $null
[System.Windows.Forms.Button]$DcrptRun = $null
[System.Windows.Forms.Label]$EcrptLb = $null
[System.Windows.Forms.Panel]$OSpanel = $null
[System.Windows.Forms.Label]$OthrScrptLb = $null
[System.Windows.Forms.Button]$PassAuthBtn = $null
[System.Windows.Forms.Panel]$EDpanel = $null
[System.Windows.Forms.ProgressBar]$DcrptProgressBar = $null
[System.Windows.Forms.PictureBox]$SocLogo = $null
[System.Windows.Forms.Label]$Label1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'providence.resources.ps1')
$EcrptRun = (New-Object -TypeName System.Windows.Forms.Button)
$EcrptProgressBar = (New-Object -TypeName System.Windows.Forms.ProgressBar)
$DcrptLb = (New-Object -TypeName System.Windows.Forms.Label)
$EcrptBtnBrows = (New-Object -TypeName System.Windows.Forms.Button)
$DcrptTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$DcrptBtnBrows = (New-Object -TypeName System.Windows.Forms.Button)
$EcrptTextBox = (New-Object -TypeName System.Windows.Forms.TextBox)
$DcrptRun = (New-Object -TypeName System.Windows.Forms.Button)
$EcrptLb = (New-Object -TypeName System.Windows.Forms.Label)
$OSpanel = (New-Object -TypeName System.Windows.Forms.Panel)
$OthrScrptLb = (New-Object -TypeName System.Windows.Forms.Label)
$PassAuthBtn = (New-Object -TypeName System.Windows.Forms.Button)
$EDpanel = (New-Object -TypeName System.Windows.Forms.Panel)
$DcrptProgressBar = (New-Object -TypeName System.Windows.Forms.ProgressBar)
$SocLogo = (New-Object -TypeName System.Windows.Forms.PictureBox)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$OSpanel.SuspendLayout()
$EDpanel.SuspendLayout()
([System.ComponentModel.ISupportInitialize]$SocLogo).BeginInit()
$Providence.SuspendLayout()
#
#EcrptRun
#
$EcrptRun.BackColor = [System.Drawing.Color]::Gold
$EcrptRun.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$EcrptRun.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]77))
$EcrptRun.Name = [System.String]'EcrptRun'
$EcrptRun.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]380,[System.Int32]46))
$EcrptRun.TabIndex = [System.Int32]1
$EcrptRun.Text = [System.String]'Run Encryption'
$EcrptRun.UseVisualStyleBackColor = $false
$EcrptRun.add_Click($BtnEcrptRun)
#
#EcrptProgressBar
#
$EcrptProgressBar.BackColor = [System.Drawing.SystemColors]::Desktop
$EcrptProgressBar.ForeColor = [System.Drawing.Color]::Gold
$EcrptProgressBar.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]129))
$EcrptProgressBar.MarqueeAnimationSpeed = [System.Int32]10
$EcrptProgressBar.Name = [System.String]'EcrptProgressBar'
$EcrptProgressBar.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]380,[System.Int32]23))
$EcrptProgressBar.Style = [System.Windows.Forms.ProgressBarStyle]::Continuous
$EcrptProgressBar.TabIndex = [System.Int32]2
#
#DcrptLb
#
$DcrptLb.BackColor = [System.Drawing.Color]::Black
$DcrptLb.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$DcrptLb.ForeColor = [System.Drawing.Color]::White
$DcrptLb.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]188))
$DcrptLb.Name = [System.String]'DcrptLb'
$DcrptLb.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]380,[System.Int32]23))
$DcrptLb.TabIndex = [System.Int32]4
$DcrptLb.Text = [System.String]'Select Script to Decrypt and Execute'
#
#EcrptBtnBrows
#
$EcrptBtnBrows.BackColor = [System.Drawing.SystemColors]::Control
$EcrptBtnBrows.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$EcrptBtnBrows.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]264,[System.Int32]44))
$EcrptBtnBrows.Name = [System.String]'EcrptBtnBrows'
$EcrptBtnBrows.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]27))
$EcrptBtnBrows.TabIndex = [System.Int32]5
$EcrptBtnBrows.Text = [System.String]'Browse'
$EcrptBtnBrows.UseVisualStyleBackColor = $false
$EcrptBtnBrows.add_Click($BtnEcrptFileSel)
#
#DcrptTextBox
#
$DcrptTextBox.BackColor = [System.Drawing.SystemColors]::Window
$DcrptTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$DcrptTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$DcrptTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$DcrptTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]214))
$DcrptTextBox.Name = [System.String]'DcrptTextBox'
$DcrptTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$DcrptTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]229,[System.Int32]27))
$DcrptTextBox.TabIndex = [System.Int32]7
#
#DcrptBtnBrows
#
$DcrptBtnBrows.BackColor = [System.Drawing.SystemColors]::Control
$DcrptBtnBrows.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$DcrptBtnBrows.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]264,[System.Int32]214))
$DcrptBtnBrows.Name = [System.String]'DcrptBtnBrows'
$DcrptBtnBrows.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]27))
$DcrptBtnBrows.TabIndex = [System.Int32]5
$DcrptBtnBrows.Text = [System.String]'Browse'
$DcrptBtnBrows.UseVisualStyleBackColor = $false
$DcrptBtnBrows.add_Click($BtnDcrptFileSel)
#
#EcrptTextBox
#
$EcrptTextBox.BackColor = [System.Drawing.SystemColors]::Window
$EcrptTextBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$EcrptTextBox.ForeColor = [System.Drawing.SystemColors]::WindowText
$EcrptTextBox.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$EcrptTextBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]44))
$EcrptTextBox.Name = [System.String]'EcrptTextBox'
$EcrptTextBox.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$EcrptTextBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]229,[System.Int32]27))
$EcrptTextBox.TabIndex = [System.Int32]7
#
#DcrptRun
#
$DcrptRun.BackColor = [System.Drawing.Color]::Gold
$DcrptRun.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$DcrptRun.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]247))
$DcrptRun.Name = [System.String]'DcrptRun'
$DcrptRun.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]380,[System.Int32]46))
$DcrptRun.TabIndex = [System.Int32]1
$DcrptRun.Text = [System.String]'Run Decryption'
$DcrptRun.UseVisualStyleBackColor = $false
$DcrptRun.add_Click($BtnDcrptRun)
#
#EcrptLb
#
$EcrptLb.BackColor = [System.Drawing.Color]::Black
$EcrptLb.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$EcrptLb.ForeColor = [System.Drawing.Color]::White
$EcrptLb.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]18))
$EcrptLb.Name = [System.String]'EcrptLb'
$EcrptLb.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]380,[System.Int32]23))
$EcrptLb.TabIndex = [System.Int32]4
$EcrptLb.Text = [System.String]'Select Script To Encrypt'
#
#OSpanel
#
$OSpanel.BackColor = [System.Drawing.Color]::Black
$OSpanel.Controls.Add($OthrScrptLb)
$OSpanel.Controls.Add($PassAuthBtn)
$OSpanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]354))
$OSpanel.Name = [System.String]'OSpanel'
$OSpanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]722,[System.Int32]166))
$OSpanel.TabIndex = [System.Int32]8
$OSpanel.add_Paint($OSpanel_Paint)
#
#OthrScrptLb
#
$OthrScrptLb.BackColor = [System.Drawing.Color]::Black
$OthrScrptLb.ForeColor = [System.Drawing.Color]::White
$OthrScrptLb.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]10))
$OthrScrptLb.Name = [System.String]'OthrScrptLb'
$OthrScrptLb.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]698,[System.Int32]26))
$OthrScrptLb.TabIndex = [System.Int32]1
$OthrScrptLb.Text = [System.String]'Other Scripts'
#
#PassAuthBtn
#
$PassAuthBtn.BackColor = [System.Drawing.Color]::Gold
$PassAuthBtn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]69))
$PassAuthBtn.Name = [System.String]'PassAuthBtn'
$PassAuthBtn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]698,[System.Int32]51))
$PassAuthBtn.TabIndex = [System.Int32]0
$PassAuthBtn.Text = [System.String]'Password Checker'
$PassAuthBtn.UseVisualStyleBackColor = $false
$PassAuthBtn.add_Click($BtnPassAUTH)
#
#EDpanel
#
$EDpanel.BackColor = [System.Drawing.Color]::Black
$EDpanel.Controls.Add($DcrptProgressBar)
$EDpanel.Controls.Add($DcrptLb)
$EDpanel.Controls.Add($EcrptLb)
$EDpanel.Controls.Add($EcrptBtnBrows)
$EDpanel.Controls.Add($DcrptRun)
$EDpanel.Controls.Add($EcrptTextBox)
$EDpanel.Controls.Add($EcrptProgressBar)
$EDpanel.Controls.Add($DcrptBtnBrows)
$EDpanel.Controls.Add($EcrptRun)
$EDpanel.Controls.Add($DcrptTextBox)
$EDpanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]326,[System.Int32]12))
$EDpanel.Name = [System.String]'EDpanel'
$EDpanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]408,[System.Int32]336))
$EDpanel.TabIndex = [System.Int32]9
#
#DcrptProgressBar
#
$DcrptProgressBar.BackColor = [System.Drawing.Color]::Black
$DcrptProgressBar.ForeColor = [System.Drawing.Color]::Gold
$DcrptProgressBar.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]299))
$DcrptProgressBar.MarqueeAnimationSpeed = [System.Int32]10
$DcrptProgressBar.Name = [System.String]'DcrptProgressBar'
$DcrptProgressBar.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]380,[System.Int32]23))
$DcrptProgressBar.Style = [System.Windows.Forms.ProgressBarStyle]::Continuous
$DcrptProgressBar.TabIndex = [System.Int32]8
#
#SocLogo
#
$SocLogo.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom)
$SocLogo.BackColor = [System.Drawing.Color]::Black
$SocLogo.Image = ([System.Drawing.Image]$resources.'SocLogo.Image')
$SocLogo.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]30))
$SocLogo.Name = [System.String]'SocLogo'
$SocLogo.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]308,[System.Int32]293))
$SocLogo.TabIndex = [System.Int32]10
$SocLogo.TabStop = $false
#
#Label1
#
$Label1.BackColor = [System.Drawing.Color]::Black
$Label1.ForeColor = [System.Drawing.Color]::White
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]523))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]722,[System.Int32]23))
$Label1.TabIndex = [System.Int32]11
$Label1.Text = [System.String]'Authored By: Shamar Lee and Avery Hof'
#
#Providence
#
$Providence.AutoSize = $true
$Providence.BackColor = [System.Drawing.SystemColors]::MenuText
$Providence.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]746,[System.Int32]554))
$Providence.Controls.Add($Label1)
$Providence.Controls.Add($SocLogo)
$Providence.Controls.Add($EDpanel)
$Providence.Controls.Add($OSpanel)
$Providence.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$Providence.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Providence.MaximizeBox = $false
$Providence.Text = [System.String]'Providence'
$OSpanel.ResumeLayout($false)
$EDpanel.ResumeLayout($false)
$EDpanel.PerformLayout()
([System.ComponentModel.ISupportInitialize]$SocLogo).EndInit()
$Providence.ResumeLayout($false)
Add-Member -InputObject $Providence -Name EcrptRun -Value $EcrptRun -MemberType NoteProperty
Add-Member -InputObject $Providence -Name EcrptProgressBar -Value $EcrptProgressBar -MemberType NoteProperty
Add-Member -InputObject $Providence -Name DcrptLb -Value $DcrptLb -MemberType NoteProperty
Add-Member -InputObject $Providence -Name EcrptBtnBrows -Value $EcrptBtnBrows -MemberType NoteProperty
Add-Member -InputObject $Providence -Name DcrptTextBox -Value $DcrptTextBox -MemberType NoteProperty
Add-Member -InputObject $Providence -Name DcrptBtnBrows -Value $DcrptBtnBrows -MemberType NoteProperty
Add-Member -InputObject $Providence -Name EcrptTextBox -Value $EcrptTextBox -MemberType NoteProperty
Add-Member -InputObject $Providence -Name DcrptRun -Value $DcrptRun -MemberType NoteProperty
Add-Member -InputObject $Providence -Name EcrptLb -Value $EcrptLb -MemberType NoteProperty
Add-Member -InputObject $Providence -Name OSpanel -Value $OSpanel -MemberType NoteProperty
Add-Member -InputObject $Providence -Name OthrScrptLb -Value $OthrScrptLb -MemberType NoteProperty
Add-Member -InputObject $Providence -Name PassAuthBtn -Value $PassAuthBtn -MemberType NoteProperty
Add-Member -InputObject $Providence -Name EDpanel -Value $EDpanel -MemberType NoteProperty
Add-Member -InputObject $Providence -Name DcrptProgressBar -Value $DcrptProgressBar -MemberType NoteProperty
Add-Member -InputObject $Providence -Name SocLogo -Value $SocLogo -MemberType NoteProperty
Add-Member -InputObject $Providence -Name Label1 -Value $Label1 -MemberType NoteProperty
}
. InitializeComponent
