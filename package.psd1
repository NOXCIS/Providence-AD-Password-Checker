@{
    Root = 'C:\Users\sa_le\Documents\GitHub\Providence-AD-Password-Checker\run.ps1'
    OutputPath = 'C:\Users\sa_le\Documents\GitHub\Providence-AD-Password-Checker\out'
    Package = @{
        Enabled = $true
        Obfuscate = $true
        HideConsoleWindow = $true
        DotNetVersion = 'v4.6.2'
        FileVersion = '1.0.0'
        FileDescription = ''
        ProductName = 'Providence Ad Tools'
        ProductVersion = '0.1'
        Copyright = 'NOXCIS @ Github'
        RequireElevation = $false
        ApplicationIconPath = 'C:\Users\sa_le\Documents\GitHub\Providence-AD-Password-Checker\Images\icon.ico'
        PackageType = 'Console'
    }
    Bundle = @{
        Enabled = $true
        Modules = $true
        # IgnoredModules = @()
    }
}
        