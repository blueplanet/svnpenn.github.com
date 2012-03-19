---
layout: post
title: Firefox File Associations
tags:
 - Firefox
---

{:lang='bash'}
	#!/bin/sh
	reg delete 'HKLM\SOFTWARE\Classes\FirefoxHTML\ShellEx\IconHandler'
	icon="$PROGRAMW6432\Pale Moon\palemoon.exe,1"
	reg add 'HKCR\FirefoxHTML\DefaultIcon' -d "$icon"
	reg add 'HKCR\Applications\palemoon.exe\DefaultIcon' -d "$icon"

Reload explorer

### Links
* [sevenforums.com/tutorials/19449-default-file-type-associations-restore.html][s]
* [sevenforums.com/tutorials/57455-file-extension-icon-change-default-icon.html][e]

[e]:http://sevenforums.com/tutorials/57455-file-extension-icon-change-default-icon.html
[s]:http://sevenforums.com/tutorials/19449-default-file-type-associations-restore.html