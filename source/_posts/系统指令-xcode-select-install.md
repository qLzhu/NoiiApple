---
title: 系统指令 Xcode-select --install
abbrlink: 44387
date: 2020-08-18 18:22:26
categories: 系统指令
tags: [xcode, git, xcode command line tools]
---

如果您是程序猿并且使用的是 Mac，肯定避免不了要安装 Xcode，因为它内置了很多开发所必须的环境。在最新版本的 Xcode 中，默认不再集成 「Xcode command line tools」。如果您不是 iOS 或 OS X 开发者，可以跳过 XCode（程序大小近10G）直接安装 「Xcode command line tools」 了。

在 {% post_link 基础知识-终端工具 "基础知识-终端工具" %} 内，键入如下命令，在弹出的界面点 Install 同意即可。

```
xcode-select --install
```

如果 Install 不了，可到 [Developer Apple](https://developer.apple.com/download/more/) 内下载相应的包。

如果您想了解 Xcode command line tools 包含多少可用的命令，可以到 {%label @/Library/Developer/CommandLineTools/ %} 查看，另外如果您想卸载的话直接删除该目录即可。