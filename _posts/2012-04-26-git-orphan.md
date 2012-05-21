---
layout: post
title: Git orphan
tags:
 - Git
---

![width1](/img/2012/git.jpg)

{:lang='bash'}
	# Local rename
	git branch -m master master-old
	# Remote rename
	git push origin master-old
	git push origin :master
	# Local new master
	git checkout --orphan master
	git rm -rf .
	# do work
	git add -A
	git commit -m 'Initial commit'
	# Remote new master
	git push origin master
	git push origin :master-old

* [In git, is there a simple way of introducing an unrelated branch to a repository?][i]
* [git: rename remote branch](http://stackoverflow.com/q/1526794)

[i]:http://stackoverflow.com/questions/1384325
