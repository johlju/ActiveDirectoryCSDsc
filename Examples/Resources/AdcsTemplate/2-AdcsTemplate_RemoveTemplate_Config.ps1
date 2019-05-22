<#PSScriptInfo
.VERSION 1.0.0
.GUID 4f057a4f-0d4a-4d1f-aaf1-8080718428e0
.AUTHOR Microsoft Corporation
.COMPANYNAME Microsoft Corporation
.COPYRIGHT
.TAGS DSCConfiguration
.LICENSEURI https://github.com/PowerShell/ActiveDirectoryCSDsc/blob/master/LICENSE
.PROJECTURI https://github.com/PowerShell/ActiveDirectoryCSDsc
.ICONURI
.EXTERNALMODULEDEPENDENCIES
.REQUIREDSCRIPTS
.EXTERNALSCRIPTDEPENDENCIES
.RELEASENOTES First version.
.PRIVATEDATA 2016-Datacenter,2016-Datacenter-Server-Core
#>

#Requires -module ActiveDirectoryCSDsc

<#
    .DESCRIPTION
        This example will remove the DomainController CA Template from the server
#>
Configuration AdcsTemplate_RemoveTemplate_Config
{
    Import-DscResource -Module ActiveDirectoryCSDsc

    Node localhost
    {
        AdcsTemplate DomainController
        {
            Name   = "DomainController"
            Ensure = 'Absent'
        }
    }
}
