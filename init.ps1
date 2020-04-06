### 安装scoop并自定义安装路径

[environment]::setEnvironmentVariable('SCOOP','D:\Scoop','User')
$env:SCOOP='D:\Scoop'

[environment]::setEnvironmentVariable('SCOOP_GLOBAL','D:\Scoop\GlobalApps','Machine')
$env:SCOOP_GLOBAL='D:\Scoop\GlobalApps'

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

### 添加bucket
scoop bucket add extras;
scoop bucket add Java;
scoop bucket add versions;
scoop bucket add Ash258 'https://github.com/Ash258/Scoop-Ash258.git'
scoop bucket add dorado https://github.com/h404bi/dorado
scoop bucket add iszy https://github.com/ZvonimirSun/scoop-iszy
