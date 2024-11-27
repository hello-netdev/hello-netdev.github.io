# 获取脚本的完整路径
$scriptPath = $MyInvocation.MyCommand.Definition
 
# 获取脚本所在的目录
$scriptDir = Split-Path $scriptPath
 
# 设置当前目录为脚本目录
Set-Location $scriptDir

mkdocs gh-deploy --config-file ../hello-netdev/mkdocs.yml
git reset
git clean -fd