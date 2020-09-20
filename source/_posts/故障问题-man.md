---
title: 故障问题-Line too long in config file
abbrlink: 49857
date: 2020-08-18 18:31:32
categories: 故障问题
tags: [man, /private/etc/man.conf]
---

打开{% post_link 基础知识-终端工具 "终端.app" %}，如果报下述错误！

```bash
Line too long in config file
unable to make sense of the file /private/etc/man.conf
```

请使用相关编辑器打开 {%label @/etc/man.conf %}，并在结尾处添加一行空白行保存，该问题即可解决。