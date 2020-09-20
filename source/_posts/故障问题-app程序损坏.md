---
title: 故障问题-app程序损坏
categories: 故障问题
tags: [程序损坏, xxx.app无法打开]
abbrlink: 17717
date: 2020-08-24 13:49:11
---

如果我们直接安装或者接收别人传来的 .app 程序时，有时会提示“xxx.app 已损坏，无法打开。您应将它移除到废纸篓。” 的问题。

例如：

{% asset_img 无法打开应用.jpg %}
<!-- more -->

{% cq %}
造成该问题的原因是 .app 程序的可执行文件，权限丢失造成的。
{% endcq %}

解决办法是：

{% asset_img 终端.jpg %}

1. {%label @⌘Command + 空格键 %} 打开聚焦搜索。
2. 输入“terminal”后回车，以此打开终端工具。
3. 在终端内输入 {%label @sudo xattr -d com.apple.quarantine %}（使用时注意命令后方有个空格）。
4. 把出现问题的 app 程序，拖拽到刚才输入的命令后方回车。
5. 完美解决了。

您也可以直接在出现损坏的 app 上右键，依次打开 “显示包内容-Contents-MacOS”，然后把该目录下的可执行文件，拖到终端 {%label @sudo chmod +x %} 命令的后方（拖拽时要在命令的后方添加个空格），对其赋予权限。
