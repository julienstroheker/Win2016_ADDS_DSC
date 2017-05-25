$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Domain Controller" {

    It "Should have DNS feature enabled" {
        Get-WindowsFeature -Name DNS | Should Be $true
    }

    It "Should have the DNS diags activated" {
        Get-DnsServerDiagnostics | Should Be $true
    }

    It "Should have the DNS tools installed" {
        Get-WindowsFeature -Name RSAT-DNS-Server | Should Be $true
    }

    It "Should have the DNS server address as 127.0.0.1" {
        #$Interface=Get-NetAdapter|Where Name -Like "Ethernet*"|Select-Object -First 1
        #$InterfaceAlias=$($Interface.Name)
        #Get-DnsClientServerAddress -InterfaceAlias $InterfaceAlias -AddressFamily IPv4 
    }

    
    It "Should have a F disk" {
        
    }

    It "Should have ADDS feature enabled" {
        Get-WindowsFeature -Name AD-Domain-Services | Should Be $true
    }

    It "Should have ADDS RSAT tools installed" {
        Get-WindowsFeature -Name RSAT-ADDS-Tools | Should Be $true
    }
    
    It "Should have the AD Admin Center tool installed" {
        Get-WindowsFeature -Name RSAT-AD-AdminCenter | Should Be $true
    }
    
    It "Should have the XXXXX.com domain name" {
        
    }

}
