---
layout: post
title: FFmpeg, encode mp3
tags:
 - FFmpeg
---

{:lang='bash'}
	# AAC source
	ffmpeg -i in.flv -q 1 -map a out.mp3
	
	# MP3 source
	ffmpeg -i in.flv -c copy out.mp3

	# WAV source
	ffmpeg -i in.wav -b:a 320k out.mp3
