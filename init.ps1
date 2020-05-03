### https://www.iamzs.cn/archives/scoop-guidebook.html
### https://github.com/lukesampson/scoop/wiki/Pre--and-Post-install-scripts

set-executionpolicy remotesigned -scope currentuser

### 安装scoop并自定义安装路径

$env:SCOOP='D:\Scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

$env:SCOOP_GLOBAL='D:\Scoop\GlobalApps'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL','$env:SCOOP_GLOBAL','Machine')

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

### 安装基础包（4）

scoop install git curl sudo aria2

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

scoop config aria2-enabled true
scoop config aria2-max-connection-per-server 8
scoop config aria2-split 8	
scoop config aria2-min-split-size 3M

### 安装必选包（6）

scoop install googlechrome
scoop install ditto
scoop install snipaste

scoop install cmder-full
scoop install windowsterminal-np
scoop install sublime-text

### 安装非必选包（10）

scoop install geekuninstaller
scoop install freedownloadmanager
scoop install autohotkey-installer

scoop install screentogif
scoop install licecap
scoop install dorado/dingtalk

scoop install postman
scoop install typora

scoop install qttabbar
scoop install update-qttabbar

### 安装IDE（8）

scoop install oraclejdk
scoop install Ash258/IntelliJ-IDEA-portable

scoop install adb 
scoop install android-sdk

scoop install nodejs
scoop install WebStorm-portable

scoop install my/android-studio
scoop install my/scrcpy-gui

### 安装自定义bucket中必选包（12）

scoop install my/quicklook
scoop install my/listary
scoop install my/keymap-replacer

scoop install my/caps-unlocker
scoop install my/bandizip
scoop install my/mouse-inc

scoop install my/yx-calendar
scoop install my/wgestures
scoop install my/xyplorer

scoop install my/huochat
scoop install my/ahk-scripts
scoop install my/mactype

### 安装自定bucket中非必选包（7）

scoop install my/wechat
scoop install my/paper-icons
scoop install my/process-hacker

scoop install my/noMeiryoUI
scoop install my/yynote
scoop install my/open-hashtab

scoop install my/space-sniffer

### 配置环境信息（1）

scoop install my/env-config

### 提权安装包（4）

sudo scoop install my/PingFang-C my/SourceCodePro-Lite
sudo scoop install SarasaGothic-SC SourceCodePro-NF