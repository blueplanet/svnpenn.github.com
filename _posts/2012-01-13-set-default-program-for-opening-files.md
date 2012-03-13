---
layout: post
title: Set default program for opening files
tags:
 - Windows
---

{% highlight bat %}
:: Scripts will still need an extension
:: because of GitHub. If you leave out the %1 it
:: will just open a blank notepad.

ftype no_ext=notepad "%1"

assoc .=no_ext
{% endhighlight %}

* [stackoverflow.com/questions/9027584][s]
* [superuser.com/questions/13653](http://superuser.com/questions/13653)

[s]:http://stackoverflow.com/questions/9027584