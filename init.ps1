### https://www.iamzs.cn/archives/scoop-guidebook.html
### https://github.com/lukesampson/scoop/wiki/Pre--and-Post-install-scripts

### 浏览器书签、浏览器脚本、浏览器css样式
### 输入法信息

set-executionpolicy remotesigned -scope currentuser

### 安装scoop并自定义安装路径

$env:SCOOP='D:\Scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

$env:SCOOP_GLOBAL='D:\Scoop\global'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')

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

### 配置aria2
scoop install git sudo aria2

scoop config aria2-enabled false
scoop config aria2-max-connection-per-server 8
scoop config aria2-split 8
scoop config aria2-min-split-size 3M

### 安装基础包

scoop install windowsterminal-np
scoop install my/keymap-replacer # ✔

scoop install my/bandizip # ✔
scoop install my/clover # ✔

scoop install my/google-helper # ✔
scoop install googlechrome # ✔

scoop install cmder-full # ✔
scoop install terminus

scoop install sublime-text # ✔
scoop install vscode

scoop install github # ✔

### 安装非必选包

scoop install ditto # ✔
scoop install snipaste # ✔

scoop install my/wgestures # ✔
scoop install my/freedownloadmanager # ✔

scoop install geekuninstaller # ✔
scoop install autohotkey-installer # ✔

scoop install screentogif # ✔
scoop install licecap # ✔

scoop install postman # ✔ 
scoop install typora # ✔

scoop install spacesniffer # ✔

### 安装IDE

scoop install oraclejdk # ✔
scoop install IntelliJ-IDEA-portable

scoop install adb # ✔
scoop install android-sdk

scoop install scrcpy # ✔
scoop install my/scrcpy-gui # ✔

scoop install my/android-studio # ✔

scoop install nodejs # ✔
scoop install WebStorm-portable

### 安装自定义bucket包

scoop install my/quicklook # ✔
scoop install my/listary

scoop install my/caps-unlocker # ✔
scoop install my/mouse-inc # ✔

scoop install my/yx-calendar
scoop install my/xyplorer

scoop install my/huochat
scoop install my/ahk-scripts # ✔

scoop install my/wechat # ✔
scoop install dorado/dingtalk # ✔

scoop install my/open-hashtab # ✔
scoop install my/paper-icons # ✔

scoop install my/noMeiryoUI # ✔
scoop install my/mactype # ✔

scoop install my/thunderx # ✔
scoop install my/thunder-light # ✔

scoop install my/process-hacker # ✔


### 配置环境信息

scoop install my/env-config # ✔

### 提权安装字体

sudo scoop install my/YaHeiMonacoHybrid my/SourceCodePro-Lite -g # ✔
sudo scoop install SarasaGothic-SC SourceCodePro-NF -g # ✔
