---
layout: post
title: Jekyll With Coderay
tags:
 - Windows
---

### Install MinGW
* [sourceforge.net/projects/mingw/files/Installer/mingw-get-inst][n]

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

### Install Coderay

{:lang='bash'}
	gem install coderay
	# Install Bash scanner
	cd /c/Ruby*/lib/ruby/gems/*/gems/coderay*/lib/coderay/scanners
	wget github.com/pejuko/coderay_bash/raw/master/lib/coderay/scanners/bash.rb
	cd -

### Generate CSS

{:lang='bash'}
	coderay stylesheet > coderay.css
	# Patch	
	wget github.com/svnpenn/dotfiles/raw/master/etc/coderay-css.diff
	patch < coderay-css.diff
	cp coderay.css /c/home/GitHub/svnpenn.github.com/css

### Set _config.yml
    markdown: kramdown
    kramdown:
     use_coderay: true
     coderay:
      coderay_css: class
      coderay_line_numbers:

### Set post

{:lang='bash'}
	{:lang='bash'}
		# This is example code
		blah blah blah
		qwer qwer qwer

### Use

{:lang='bash'}
	jekyll --auto --server
	# and then browse to localhost:4000

### Links
* [github.com/rubychan/coderay](http://github.com/rubychan/coderay)
* [github.com/wbzyl/coderay/commit/f1aab][t]

[g]:http://github.com/mojombo/jekyll/wiki/install
[n]:http://sourceforge.net/projects/mingw/files/Installer/mingw-get-inst
[t]:http://github.com/wbzyl/coderay/commit/f1aab













