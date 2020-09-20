---
title: 系统指令-删除程序的卸载残留
abbrlink: 2296
date: 2020-08-18 18:37:30
categories: 系统指令
tags: [mdfind, uninstall, 卸载, 卸载残留, "CleanMyMac X.app"]
---

MacOS 系统上卸载程序，我们通常的做法就是，直接删除位于 “访达-应用程序” 里面的App；又或者按住 {%label @⌥option %} 直接在启动台卸载（只适用于从 App Store 下载的程序）。这两种做法都是不会删除程序的用户配置及其其它关键信息的，时间长了系统虽然会帮我们自动清理一些残留。如果我们现在就不想保留哪？此时{%label warning@可以使用 mdfind 命令，手动查询跟程序相关的文件并删除%}。

{% note %}
mdfind 其实就是 MacOS 的聚焦搜索 Spotlight。如果您的 Spotlight 不正常工作，也可以 `mdutil -E` 强制重建索引数据库
{% endnote %}

例如：查询跟 CleanMyMac.app 所有相关的文件

```bash
# 查询
mdfind -name CleanMyMac
# /Applications/CleanMyMac X.app
# /Library/LaunchDaemons/com.macpaw.zh.CleanMyMac4.Agent.plist
# /Library/LaunchDaemons/com.macpaw.CleanMyMac4.Agent.plist
# ...

# rm -rf 手动强制删除
# 如果路径中有空格的话，注意使用反斜杠转义下
rm -rf /Applications/CleanMyMac\ X.app
```

还可以使用 -onlyin 参数，指定搜索的目录（mdfind -onlyin ~/downloads CleanMyMac）。