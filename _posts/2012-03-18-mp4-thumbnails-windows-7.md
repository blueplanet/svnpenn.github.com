---
layout: post
title: mp4 Thumbnails, Windows 7
tags:
 - Windows
---

### Install FFmpeg
* [ffmpeg.zeranoe.com](http://ffmpeg.zeranoe.com)

### Install AtomicParsley
* [atomicparsley.sourceforge.net](http://atomicparsley.sourceforge.net)

### Use

{:lang='bash'}
	# Extract frame
	ffmpeg -ss 1000 -i video.mp4 -vframes 1 frame.png
	# Set thumbnail
	atomicparsley video.mp4 --artwork frame.png --overWrite
	# Remove thumbnail
	atomicparsley video.mp4 --artwork REMOVE_ALL --overWrite

Before
![width1](/img/2012/mp4-thumbnails-windows-7-1.png)

After
![width1](/img/2012/mp4-thumbnails-windows-7-2.png)

### Links
* [kerstetter.net/index.php/projects/software/metax][k]
* [mixzing.freeforums.org/mp4-m4v-video-metadata-t111.html][m]
* [sevenforums.com/media-center/53961-use-picture-thumbnail-4.html][s]

[k]:http://kerstetter.net/index.php/projects/software/metax
[m]:http://mixzing.freeforums.org/mp4-m4v-video-metadata-t111.html
[s]:http://sevenforums.com/media-center/53961-use-picture-thumbnail-4.html
