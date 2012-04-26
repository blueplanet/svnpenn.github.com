---
layout: post
title: Install Jekyll with Cygwin
tags:
 - Windows
---

### Install Cygwin packages
* gcc4-core
* git
* make
* ruby
* wget

### Install Rubygems

{:lang='bash'}
	wget rubyforge.org/frs/download.php/76032/rubygems-1.8.23.tgz
	tar xf rubygems*
	cd rubygems*
	ruby setup.rb install
	cd -

### Install posix-spawn

{:lang='bash'}
	gem install rake-compiler
	git clone git://github.com/rtomayko/posix-spawn.git
	cd posix-spawn
	rake gem
	gem install pkg/posix-spawn-0.3.6
	cd -

* [matt.scharley.me/2012/03/10/windows-cygwin-and-jekyll][m]
* [stevenharman.net/blog/archive/2008/11/12/installing-rubygems-in-cygwin.aspx][s]

### Install Jekyll

{:lang='bash'}
	PATH=/bin
	gem install jekyll

### Install Coderay

{:lang='bash'}
	gem install coderay
	# Install Bash scanner
	cd /usr/lib/ruby/gems/*/gems/coderay*/lib/coderay/scanners
	wget https://raw.github.com/pejuko/coderay_bash/master/lib/coderay/scanners/bash.rb
	cd -

[m]:http://matt.scharley.me/2012/03/10/windows-cygwin-and-jekyll
[s]:http://stevenharman.net/blog/archive/2008/11/12/installing-rubygems-in-cygwin.aspx
