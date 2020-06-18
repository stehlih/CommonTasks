﻿Configuration PullServer
{
    param  
    (
        [string]
        $CertificateThumbPrint = 'AllowUnencryptedTraffic',

        [uint16]
        $Port = 8080,

        [string]
        $EndpointName = 'PSDSCPullServer',

        [string]
        $PhysicalPath = "$env:SystemDrive\inetpub\PSDSCPullServer",

        [bool]
        $UseSecurityBestPractices = $false
    )

    Import-DSCResource -ModuleName xPSDesiredStateConfiguration -ModuleVersion 9.1.0
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    xDscWebService PSDSCPullServer 
    { 
        Ensure                   = 'Present'
        EndpointName             = $EndpointName
        Port                     = $Port
        PhysicalPath             = $PhysicalPath
        CertificateThumbPrint    = $CertificateThumbPrint
        ModulePath               = "$env:PROGRAMFILES\WindowsPowerShell\DscService\Modules"
        ConfigurationPath        = "$env:PROGRAMFILES\WindowsPowerShell\DscService\Configuration"
        State                    = 'Started'
        UseSecurityBestPractices = $UseSecurityBestPractices
    }
}
