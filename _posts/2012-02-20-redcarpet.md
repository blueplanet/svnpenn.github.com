---
layout: post
title: Redcarpet
tags:
 - Windows
---

### Install
	gem install redcarpet --version=1.17.2

* [stackoverflow.com/q/8395347](http://stackoverflow.com/q/8395347)

### Test

{:lang='ruby'}
	# Using kramdown block attribute
	def foo
		puts 'foo'
	end

### Fenced blocks
Fenced blocks were introduced with Redcarpet 2. Jekyll currently only supports
1.9.

* [github.com/blog/832](http://github.com/blog/832)
* [github.com/mojombo/jekyll/blob/master/jekyll.gemspec][i]
* [github.com/mojombo/jekyll/pull/450][g]
* [stackoverflow.com/q/8648390](http://stackoverflow.com/q/8648390)

### Markdown tables
Redcarpet does not support markdown tables.

* [meta.stackoverflow.com/a/73581/177247][m]

[g]:http://github.com/mojombo/jekyll/pull/450
[i]:http://github.com/mojombo/jekyll/blob/master/jekyll.gemspec
[m]:http://meta.stackoverflow.com/a/73581/177247