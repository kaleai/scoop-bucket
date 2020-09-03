### https://www.iamzs.cn/archives/scoop-guidebook.html
### https://github.com/lukesampson/scoop/wiki/Pre--and-Post-install-scripts

set-executionpolicy remotesigned -scope currentuser

### 安装scoop并自定义安装路径

$env:SCOOP='D:\Scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

$env:SCOOP_GLOBAL='D:\Scoop\global\apps'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

### 安装基础包（5）

scoop install git sudo aria2
scoop install windowsterminal-np
scoop install terminus

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

scoop config aria2-enabled false
scoop config aria2-max-connection-per-server 8
scoop config aria2-split 8
scoop config aria2-min-split-size 3M

### 安装底层基础包

scoop install my/keymap-replacer
scoop install my/bandizip

### 安装必选包

scoop install googlechrome
scoop install cmder-full
scoop install sublime-text

### 安装非必选包

scoop install ditto
scoop install snipaste
scoop install wgestures

scoop install freedownloadmanager
scoop install geekuninstaller
scoop install autohotkey-installer

scoop install screentogif
scoop install licecap

scoop install postman
scoop install typora

### 安装IDE

scoop install oraclejdk
scoop install IntelliJ-IDEA-portable

scoop install adb
scoop install android-sdk

scoop install scrcpy
scoop install my/scrcpy-gui

scoop install my/android-studio

scoop install nodejs
scoop install WebStorm-portable

### 安装自定义bucket中必选包

scoop install my/quicklook
scoop install my/listary

scoop install my/caps-unlocker
scoop install my/mouse-inc

scoop install my/yx-calendar
scoop install my/xyplorer

scoop install my/huochat
scoop install my/ahk-scripts

### 安装非必选包

scoop install my/wechat
scoop install dorado/dingtalk
scoop install my/open-hashtab

scoop install my/paper-icons
scoop install my/noMeiryoUI
scoop install my/mactype

### 配置环境信息

scoop install my/env-config

### 安装额外包

scoop install my/space-sniffer
scoop install my/process-hacker


### 提权安装字体

sudo scoop install my/YaHeiMonacoHybrid my/SourceCodePro-Lite -g
sudo scoop install SarasaGothic-SC SourceCodePro-NF -g
