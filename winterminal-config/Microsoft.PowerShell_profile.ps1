#C:\Users\hp_Xa\AppData\Local\nvim\alacrityConfig\.oh-my-posh.omp.json
#oh-my-posh --init --shell pwsh --config ~/AppData/Local/nvim/alacrityConfig/.oh-my-posh.omp.json | Invoke-Expression
using namespace System.Management.Automation
using namespace System.Management.Automation.Language

. $env:USERPROFILE\Documents\PowerShell\user_profile.ps1

if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
}
Import-Module -Name Terminal-Icons
Import-Module oh-my-posh

oh-my-posh --init --shell pwsh --config ~/AppData/Local/nvim/winterminal-config/.oh-my-posh.omp.json | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

function which ($command)  {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
