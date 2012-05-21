---
layout: post
title: BackTrack Linux
tags:
 - Linux
---

BackTrack is an operating system based on the Ubuntu GNU/Linux distribution
aimed at digital forensics and penetration testing use. It is named after
backtracking, a search algorithm. The current version is BackTrack 5, code name
"Revolution."

### Download
[backtrack-linux.org](http://backtrack-linux.org)

* WM Flavor = GNOME
* Arch = 64
* Image = ISO

### Install
[unetbootin.sourceforge.net](http://unetbootin.sourceforge.net)

**Operating system** | **Device** | **Type** | **Mount point** | **Format** | **Size**
---------------------|------------|----------|-----------------|------------|---------
Windows 7 loader     | /dev/sda1  | NTFS     | <!---->         | <!---->    | 100 MB
Windows 7            | /dev/sda2  | NTFS     | <!---->         | <!---->    | 900 GB
BackTrack            | /dev/sda5  | ext4     | /               | Yes        | 100 GB

* Install boot loader = Yes
* Device for boot loader installation = /dev/sda
* Kernel should be 2.6.39.4
`uname -r`

### Notes
GRUB must be installed whether you use it or not.

### Links
* [askubuntu.com/questions/7865](http://askubuntu.com/questions/7865)
* [blog.sudobits.com/2011/07/30/how-to-uninstall-ubuntu][b]
* [blogs.technet.com/b/port25/archive/2006/10/13/http-port25-technet-com-archive-2006-10-12-windows-and-linux-integration-3a00-a-conversation-with-the-author-aspx.aspx][o]

![width1](/img/2011/backtrack-linux.png)

[b]:http://blog.sudobits.com/2011/07/30/how-to-uninstall-ubuntu
[o]:http://blogs.technet.com/b/port25/archive/2006/10/13/http-port25-technet-com-archive-2006-10-12-windows-and-linux-integration-3a00-a-conversation-with-the-author-aspx.aspx
