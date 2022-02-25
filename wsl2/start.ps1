if([string]::IsNullorEmpty($Args[0])){
 Write-Host "please select wsl Distribution" 
 Write-Host "-----------------" 
 wsl -l
 Write-Host "-----------------" 
 return
}

$distr=$Args[0]
$wsl_distr= wsl -d $distr echo aiueo

if(!$wsl_distr.Contains("aiueo")){
 Write-Host "not exsits Distribution" 
 Write-Host "-----------------" 
 wsl -l
 Write-Host "-----------------" 
 return
}


#if([string]::IsNullorEmpty($Args[1])){
#   $message="${distr}��user���w�肵�Ă��������B" 
#   Write-Host $message
#   $users= wsl -d $distr ./user_list.sh
#   Write-Host --users--
#   Write-Host $users
#   return
#}
#$wsl_user=$Args[1]
#
#$wsl_distr= wsl -u $wsl_user -d $distr echo aiueo
#
#if(!$wsl_distr.Contains("aiueo")){
#  Write-Host "���[�U�[�����݂��܂���B" 
#   $users= wsl -d $distr ./user_list.sh
#   Write-Host --users--
#   Write-Host $users
#   return
#}
#wsl -u $wsl_user -d $distr ./init_wsl.sh
#wsl --shutdown
#wsl -u $wsl_user -d $distr ./init_lang.sh
#wsl --shutdown
#wsl -u $wsl_user -d $distr ./init_package.sh
#wsl -u $wsl_user -d $distr ./init_config.sh

wsl -u root -d $distr ./init_wsl.sh
wsl --shutdown
wsl -u root -d $distr ./init_lang.sh
wsl --shutdown
wsl -u root -d $distr ./init_package.sh
wsl -d $distr ./init_config.sh

$welcome = "welcome ${distr}"
 Write-Host "everthing done!!"
Write-Host $welcome
