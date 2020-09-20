---
title: 系统指令-启动web服务的方法
categories: 系统指令
tags: [www, web, localhost, php, python2, https://localhost:8000]
abbrlink: 43447
date: 2020-08-14 18:40:52
---

MacOS 系统对开发很友好，默认集成了 Python2 和 PHP 语言。我们可以利用它们开启 web 服务，给远在它处或局域网下的朋友们共享我们的目录。注意：朋友只能在线一个进行访问，多位朋友则不行。

> 至于为什么不用系统内置的「隔空投送」？
> 那是因为，隔空投送对文件大小和系统都有要求。例如您想给使用 Android 或者 window 朋友传输文件，难道还要使用隔空投送嘛...

开启步骤：

1. 打开终端（{% post_link 基础知识-终端工具 "请查阅“基础知识-终端工具”" %}）。
2. 输入 {%label @cd %} 命令进到要共享的目录。
3. 选择下述任何一个命令进行执行。
4. 把 https://localhost:8000 中的 localhost 改为自己的 {% post_link IPv4 "系统服务-查看本机IP地址" %} 地址，分享给朋友。
5. 让朋友用浏览器打开您分享的链接。
6. 关闭终端或按 {%label @⌃Control + C %}终结web服务。

{% asset_img ipv4.jpg %}
<!-- more -->

Python

```bash
python -m SimpleHTTPServer 8000
# 或
# 需要先升级 python 才可使用 python3 命令
python3 -m http.server --cgi 8000
```

PHP

```
php -S localhost:8000
```

前端程序猿可以使用 npm 安装 serve 服务

```
npm i -g serve

# 启动 web 服务命令，无需写端口号
# 默认 5000 端口
serve
```