---
title: 系统文件-目录下的.DS_Store文件是什么？
abbrlink: 23606
date: 2020-08-26 23:05:42
categories: 系统文件
tags: [.DS_Store, desktop.ini, "rm -f .DS_Store"]
---

.DS_Store 储存的是 Spotlight 注释、目录的自定义属性、文件的图标位置、视图设置和背景色... 跟 Window 系统的 desktop.ini 文件功能相同。当您给别人传输资料时，建议删除 .DS_Store（PS：特别是开发人员）。

删除当前目录下的.DS_Store，请使用{% post_link 基础知识-终端工具 "终端.app" %}执行 {%label @rm -f .DS_Store %}。

禁止系统自动生成.DS_Store，请执行
```bash
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE2;
killall Finder
```

重新开启，请执行
```bash
defaults delete com.apple.desktopservices DSDontWriteNetworkStores;
killall Finde
```