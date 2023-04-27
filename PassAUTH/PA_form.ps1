$PA_GUI_Load = {
}
$Label1_Click = {
}
function Get-PA_GUI {
    

    $PA_Run = {

        $(Get-Creds)
    }


#$(Get-Creds)



Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'PassAUTH.ps1')
. (Join-Path $PSScriptRoot 'PA_form.designer.ps1')
$PA_GUI.ShowDialog()

}
#return $PA_GUI.ShowDialog()
