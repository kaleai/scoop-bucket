### https://www.iamzs.cn/archives/scoop-guidebook.html
### https://github.com/lukesampson/scoop/wiki/Pre--and-Post-install-scripts

### 安装scoop并自定义安装路径

$env:SCOOP='D:\Scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

$env:SCOOP_GLOBAL='D:\Scoop\GlobalApps'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL','$env:SCOOP_GLOBAL','Machine')

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

### 添加bucket

scoop bucket add extras;
scoop bucket add Java;
scoop bucket add jetbrains;
scoop bucket add nerd-fonts;

scoop bucket add dorado https://github.com/h404bi/dorado
scoop bucket add Ash258 https://github.com/Ash258/Scoop-Ash258.git
scoop bucket add bear https://github.com/AStupidBear/scoop-bear

scoop bucket add my https://github.com/tianzhijiexian/scoop-bucket

### 安装基础包（4）
scoop install git curl sudo aria2

### 配置aria2

scoop config aria2-enabled true
scoop config aria2-max-connection-per-server 16
scoop config aria2-split 16
scoop config aria2-min-split-size 10M

### 安装必选包（5）

scoop install googlechrome ditto sublime-text snipaste cmder-full

### 安装非必选包（9）

scoop install geekuninstaller freedownloadmanager autohotkey-installer screentogif licecap qttabbar update-qttabbar
scoop install dorado/dingtalk postman

### 安装IDE（8）

scoop install oraclejdk adb android-sdk my/android-studio IntelliJ-IDEA-portable nodejs WebStorm-portable my/scrcpy-gui

### 安装自定义bucket中必选包（10）

scoop install my/quicklook my/listary my/keymap-replacer my/caps-unlocker my/bandizip my/mouse-inc my/yx-calendar
scoop install my/wgestures my/huochat my/ahk-scripts 

### 安装自定bucket中非必选包（5）

scoop install my/wechat my/paper-icons my/yynote my/setpoint my/open-hashtab

### 配置环境信息（1）

scoop install my/env-config

### 提权安装包（4）

sudo scoop install my/PingFang-C my/SourceCodePro-Lite SarasaGothic-CL SourceCodePro-NF
