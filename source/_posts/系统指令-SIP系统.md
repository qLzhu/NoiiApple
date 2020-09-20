---
title: 系统指令-关闭SIP系统完整性保护
abbrlink: 50664
date: 2020-09-05 14:16:27
categories: 系统指令
tags: [SIP, "System Integrity Protection", 系统完整性保护]
---

Apple 在 Mac 的 OS X EI Captian 版本时，开始采用 SIP 「System Integrity Protection，系统完整性保护」技术保护系统。SIP 能够有效地帮助我们，阻止恶意软件篡改系统上受保护的文件或文件夹。但，这会影响我们一些使用或设置。还有 App Store 上的所有应用程序，都是运用在沙盒模式下的。

正是基于这些，很多优秀的应用程序因为需要 SIP 权限，没办法通过 Apple 的审查机制在 App Store 上上架，进而采取双版本策略。App Store 版使用阉割版，官方版使用全功能型版本。如果我们想使用全功能型版本、更改或编辑系统文件，就必须得关闭 SIP。
<!-- more -->

> 非必要不建议大家关闭

## 关闭 SIP

1. 关机。
2. 开机时，立即在键盘上按住 {%label @⌘Command + R%}，直到看到 Apple 标志或旋转的地球时松开。
3. 进入 RecoveryOS 界面后，依次点按「实用工具-终端」。
4. 输入 {%label @csrutil disable%} 后回车。
5. 点按菜单栏  标志，选择「重新启动」。
6. OK。

{% asset_img RecoveryOS.png %}
{% asset_img csrutil.png %}

## 检测 SIP 状态

1. 打开「终端」。
2. 输入 {%label @csrutil status%} 回车。
3. 提示下述状态。

System Integrity Protection status: enabled. SIP开启状态
System Integrity Protection status: disabled. SIP关闭状态

{% asset_img status.png %}

除了关闭 SIP 系统完整性保护外，您还可在 RecoveryOS 界面的「实用工具-启动安全性实用工具」或「实用工具-[固件密码实用工具](https://support.apple.com/zh-cn/guide/security/secc7b34e5b5/web)」内对其 SIP 进行降级。