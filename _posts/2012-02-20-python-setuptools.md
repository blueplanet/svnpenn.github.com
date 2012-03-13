---
layout: post
title: Python setuptools
tags:
 - Windows
---

### Install Python

{:lang='bash'}
	cd /c/home/Steven/Downloads
	# setuptools does not work with Python 3.2
	wget -nc 'python.org/ftp/python/2.7.2/python-2.7.2.amd64.msi'
	msiexec -qn -i 'python-2.7.2.amd64.msi' ADDLOCAL="DefaultFeature"

### Install setuptools
	wget peak.telecommunity.com/dist/ez_setup.py
	./ez_setup.py

### Links
* [pypi.python.org/pypi/setuptools](http://pypi.python.org/pypi/setuptools)
* [stackoverflow.com/questions/5319215][s]

[s]:http://stackoverflow.com/questions/5319215