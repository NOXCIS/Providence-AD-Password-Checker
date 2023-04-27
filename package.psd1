@{
    Root = 'c:\Users\sa_le\Desktop\Cryptos\run.ps1'
    OutputPath = 'c:\Users\sa_le\Desktop\Cryptos\out'
    Package = @{
        Enabled = $true
        Obfuscate = $true
        HideConsoleWindow = $true
        DotNetVersion = 'v4.6.2'
        FileVersion = '1.0.0'
        FileDescription = ''
        ProductName = 'Cryptos'
        ProductVersion = '1.0'
        Copyright = 'South Dakota State University'
        RequireElevation = $false
        ApplicationIconPath = 'C:\Users\sa_le\Desktop\Cryptos\Images\icon.ico'
        PackageType = 'Console'
    }
    Bundle = @{
        Enabled = $true
        Modules = $true
        # IgnoredModules = @()
    }
}
        