---
layout: post
title: FFmpeg, Slideshow
tags:
 - FFmpeg
---

### Resize images
1. Take image with highest aspect ratio
2. width with padding = 360*(aspect ratio)

<!---->

    ffmpeg -i 01.jpg -vf scale=-1:360,pad=640:ih:(ow-iw)/2 -qmax 1 -sws_flags lanczos 360-01.jpg

### Video from image
	ffmpeg -t 272 -loop 1 -i 360-01.jpg -c copy 01.mjpg

### Join video files
	cat *.mjpg | ffmpeg -f mjpeg -i - -i in.mp3 -c:v libx264 -vprofile main -c:a libvo_aacenc -ac 2 -shortest youtube.flv

### Notes
- Using mjpg is better than mpg because you can mux without encoding
- If performance is jerky you can set `-threads 6`

### Links
* <http://ffmpeg.org/pipermail/ffmpeg-devel/2011-July/113463.html>
* <http://git.videolan.org/?p=ffmpeg.git;h=9c14d;f=ffpresets/libx264-hq.ffpreset>
* <http://git.videolan.org/?p=x264.git;a=blob;f=x264.c>
* <http://google.com/support/youtube/bin/answer.py?answer=132460>
* <http://google.com/support/youtube/bin/answer.py?answer=55744>
* <http://wikipedia.org/wiki/List_of_codecs#Lossless_compression>
* <http://wikipedia.org/wiki/YouTube#Quality_and_codecs>
