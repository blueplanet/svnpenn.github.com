---
layout: post
title: Download From Hulu With get-flash-videos
tags:
 - Windows
---

### Programs
* [RtmpDump](http://rtmpdump.mplayerhq.hu)

* [Perl](http://strawberryperl.com) get 32-bit

* [get-flash-videos][g] get combined version

### Use
{% highlight bat %}
:: Rename
ren "combined-get_flash_videos-1.24" "get_flash_videos"

:: Install Hulu plugin
perl get_flash_videos --add-plugin http://gitorious.org/get-flash-videos-plugins/gfv-plugins/blobs/raw/release/Hulu.pm

:: Download by URL
perl get_flash_videos http://www.hulu.com/watch/195075/house-small-sacrifices

:: Download by search
perl get_flash_videos house

:: get-flash-videos might not work if BitTorrent is running.
{% endhighlight %}

### Links
* [gitorious.org/get-flash-videos-plugins/pages/Hulu][i]
* [gitorious.org/get-flash-videos-plugins/gfv-plugins/blobs/history/master/Hulu.pm][t]

![width2](/images/2012/get-flash-videos.png)

[g]:http://get-flash-videos.googlecode.com
[i]:http://gitorious.org/get-flash-videos-plugins/pages/Hulu
[t]:http://gitorious.org/get-flash-videos-plugins/gfv-plugins/blobs/history/master/Hulu.pm