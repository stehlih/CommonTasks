@{

    PSDependOptions              = @{
        AddToPath      = $true
        Target         = 'BuildOutput\Modules'
        DependencyType = 'PSGalleryModule'
        Parameters     = @{
            Repository = 'PSGallery'
        }
    }

    #Modules
    BuildHelpers                 = 'latest'
    InvokeBuild                  = 'latest'
    Pester                       = '4.10.1'
    PSScriptAnalyzer             = 'latest'
    PSDeploy                     = 'latest'
    ProtectedData                = 'latest'
    DscBuildHelpers              = 'latest'
    Datum                        = '0.39.0'
    'powershell-yaml'            = 'latest'
    'Datum.ProtectedData'        = 'latest'

    #DSC Resources
    xPSDesiredStateConfiguration = '9.1.0'
    ComputerManagementDsc        = '8.4.0'
    NetworkingDsc                = '8.2.0'
    JeaDsc                       = '0.7.2'
    XmlContentDsc                = '0.0.1'
    xWebAdministration           = '3.2.0'
    SecurityPolicyDsc            = '2.10.0.0'
    StorageDsc                   = '5.0.1'
    Chocolatey                   = '0.0.79'
    ActiveDirectoryDsc           = '6.0.1'
    DfsDsc                       = '4.4.0.0'
    WdsDsc                       = '0.11.0'
    xDhcpServer                  = '3.0.0'
    xDscDiagnostics              = '2.8.0'
    xDnsServer                   = '2.0.0'
    xFailoverCluster             = '1.16.0'
    GPRegistryPolicyDsc          = '1.2.0'
    AuditPolicyDsc               = '1.4.0.0'
    SharePointDSC                = '4.6.0'
    xExchange                    = '1.32.0'
    SqlServerDsc                 = '15.1.1'
    UpdateServicesDsc            = '1.2.1'
    xWindowsEventForwarding      = '1.0.0.0'
    OfficeOnlineServerDsc        = '1.5.0'
    xBitlocker                   = '1.4.0.0'
    ActiveDirectoryCSDsc         = '5.0.0'
    'xHyper-V'                   = '3.17.0.0'
    DSCR_PowerPlan               = '1.3.0'
}
