---
layout: post
title: qBittorrent
tags:
 - Windows
---

qBittorrent is a free software cross-platform BitTorrent client GUI written with
Qt4. The program uses libtorrent-rasterbar C++ library for the torrent back-end
(network communication) functionality. It is developed by Christophe Dumez, from
the University of Technology of Belfort-Montbeliard in France.

### Options
Downloads, Save files to location, `C:\tmp\seeding`

### Uninstall

{:lang="bash"}
	rm -rf "$APPDATA/qBittorrent"
	rm -rf "$LOCALAPPDATA/qBittorrent"
	# Bash doesnt allow parenthesis in variable name.
	rm -rf "$PROGRAMFILES/qBittorrent"

### Links
* [qbittorrent.org](http://qbittorrent.org)
* [sourceforge.net/projects/qbittorrent][s]

![width2](/img/2011/qbittorrent.png)

[s]:http://sourceforge.net/projects/qbittorrent
