---
title: 系统指令-查看局域网下的IPv4地址
abbrlink: 62974
date: 2020-08-24 15:22:26
categories: 系统指令
tags: [IP, 局域网IP, 192.168.0.0, IPv4]
---

查看 IPv4 地址之前，我们先科普下基础知识。什么是 IPv4？想明白什么是 IPv4，就得先明白什么是 IP。IP 是网际协议或互联网协议，是用在 TCP/IP 协议簇中的网络层协议。另外 IP 有一个非常重要的属性，就是给每台计算机和设备规定一个地址，也就是我们俗称的 IP 地址。通俗点理解就是两个人做生意需要先约法三章签订协议，然后再写上联系自己的唯一方式比较类似。而 IPv4 表示IP协议的第四个版本 Internet Protocol version 4。

> IPv4 地址在 2011 年已经分配完毕，现在再申请的话分配的都是 IPv6。
> 目前国内物联网巨头使用都是 IPv6 地址，例如：腾讯、京东、阿里、百度、小米、华为...

<!-- more -->

## 通过 Wi-Fi 图标查看
1. 在 MacOS 启动后
2. 从屏幕右上角找到 Wi-Fi 标志
3. 链接 Wi-Fi 后，按住 {%label @⌥Option %} 键的同时点击 Wi-Fi 标志，即可看到 IPv4 地址。

{% asset_img wifi.jpg %}

## 网络配置内查看
1. 从屏幕左上角找到  标志
2. 依次点按「系统偏好设置-网络-高级-TCP/IP」，即可看到 IPv4 地址。

{% asset_img tcp.jpg %}

## 终端方式
1. {%label @⌘Command + 空格键 %} 打开聚焦搜索
2. 输入 “terminal” 或 “终端” 回车，以此打开终端.app。
3. 在终端内输入 {%label @ipconfig getifaddr en0 %} 或 {%label @osascript -e "IPv4 address of (system info)" %}，即可看到 IPv4 地址。

> Windows用户可在 CMD 运行工具下输入 ifconfig 进行查看

{% asset_img ipv4.jpg %}