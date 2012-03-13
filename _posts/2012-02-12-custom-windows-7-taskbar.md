---
layout: post
title: Custom Windows 7 Taskbar
tags:
 - Windows
---

{:lang='bash'}
	#!/bin/sh
	# support.microsoft.com?id=269269
	# Grant full control of aero.msstyles
	cd /c/Windows/Resources/Themes/Aero
	# takeown /f aero.msstyles
	# icacls aero.msstyles /grant Users:f
	mv aero.msstyles aero-old.msstyles

* [UxStyle_Core_jul13_bits.7z][u]
* [anolis.codeplex.com/](http://anolis.codeplex.com)
* [winmatrix.com/forums/index.php?/topic/14250-tutorial-hex-editing-vista-visual-styles][w]

[u]:/downloads/svnpenn/uxstyle/UxStyle_Core_jul13_bits.7z
[w]:http://winmatrix.com/forums/index.php?/topic/14250-tutorial-hex-editing-vista-visual-styles