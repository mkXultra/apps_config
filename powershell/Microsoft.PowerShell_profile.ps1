using module ".\peco_util.psm1"
using module ".\dir_util.psm1"
using module ".\repo_util.psm1"
using module ".\vm_util.psm1"
using module ".\shrotcut.psm1"
using module ".\private.psm1"
#定数読み込み
$my_document = [Environment]::GetFolderPath("MyDocuments")
$powershell_path = Join-Path $my_document "WindowsPowerShell"
$powershell_veriable = Join-Path $powershell_path "sys_veriable.ps1"
$init = Join-Path $powershell_path "init.ps1"
# $checkSpell = Join-Path $powershell_path "Scripts\Check-Spelling.ps1"
. $init
. $powershell_veriable
# . $checkSpell


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
