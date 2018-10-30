$Credential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $Credential -Authentication Basic -AllowRedirection
Import-PSSession $Session
Import-Module MsOnline
Connect-MSOLService -Credential $Credential
Import-Module LyncOnlineConnector
$session = New-CsOnlineSession -Credential $credential
Import-PSSession $session
