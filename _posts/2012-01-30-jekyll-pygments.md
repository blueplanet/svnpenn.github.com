---
layout: post
title: Jekyll With Pygments
tags:
 - Windows
---

### Install MinGW
* [sf.net/projects/mingw/files/Installer/mingw-get-inst][n]

* C Compiler
* MSYS Basic System

{:lang='bash'}
	# Install dependencies
	mingw-get install msys-patch
	mingw-get install msys-wget

### Install Ruby
Jekyll requires Ruby 1.9.1 or higher

* [github.com/mojombo/jekyll/wiki/install][g]
* [rubyinstaller.org](http://rubyinstaller.org)

### Install Jekyll
	gem install jekyll

### Install Python

{:lang='bash'}
	cd /c/home/Steven/Downloads
	# setuptools does not work with Python 3.2
	wget -nc python.org/ftp/python/2.7.2/python-2.7.2.amd64.msi
	msiexec -qn -i python-2.7.2.amd64.msi ADDLOCAL="DefaultFeature"
	cd -

### Install Pygments

{:lang='bash'}
	# Install setuptools
	wget -nc peak.telecommunity.com/dist/ez_setup.py
	./ez_setup.py
	# Pygments
	easy_install Pygments
	# Patch Albino
	cd /c/Ruby*/lib/ruby/gems/*/gems/albino-1.3.3
	wget https://raw.github.com/gist/1185645/0001-albino-windows-refactor.patch
	patch -p1 < 0001-albino-windows-refactor.patch

### Get CSS
* [github.com/rubyworks/smeagol](http://github.com/rubyworks/smeagol)

### Set _config.yml
	markdown: kramdown
	permalink: /:year/:month/:title

### Set post
{% raw %}
	{% highlight bash %}
	# This is example code
	blah blah blah
	qwer qwer qwer
	{% endhighlight %}
{% endraw %}

### Use

{:lang='bash'}
	jekyll --auto --pygments --server
	# and then browse to localhost:4000

### Links
* [fantini.name/blog/jekyll-on-windows][f]
* [stackoverflow.com/questions/1381725][s]

[f]:http://fantini.name/blog/jekyll-on-windows
[g]:http://github.com/mojombo/jekyll/wiki/install
[n]:http://sf.net/projects/mingw/files/Installer/mingw-get-inst
[s]:http://stackoverflow.com/questions/1381725