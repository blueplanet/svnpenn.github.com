---
layout: post
title: Jekyll Tags
tags:
 - Windows
---

Our journey starts at

* [github.com/mojombo/jekyll/wiki/yaml-front-matter][g].

Here we discover that we can add either `categories` or `tags` to posts.

### What is the difference?

* [stackoverflow.com/q/8675841](http://stackoverflow.com/q/8675841)

Tags are simpler, so I will go with those.

### Tag pages
Standard Jekyll can understand tags. The next task is creating tag pages. I
could manually create a page for each tag, but that would be violating [DRY][d].
The better option would be a script that generates a page for each tag.

Several solutions exist to solve this problem. First I will list some of them. I
would like to avoid gists in lieu of something more "official". I will not fork
Jekyll as to avoid maintaining the fork.

* [github.com/rfelix/my_jekyll_extensions](http://github.com/rfelix/my_jekyll_extensions)
	* Has tag pages, tag cloud, and monthly archives.

* [github.com/recurser/jekyll-plugins][h]
	* Has category pages but not tag pages. Used by Octopress.

* [github.com/pattex/jekyll-tagging](http://github.com/pattex/jekyll-tagging)
	* Has tag pages and tag cloud.

* [github.com/plusjade/jekyll-bootstrap][u]
	* The tags page has all posts grouped by tag. What we need is a page for
      each tag. This repo does have nice themes though.

### Fin
When finished I should post my findings to [Stack Overflow][a].

[a]:http://stackoverflow.com/q/1408824
[d]:http://wikipedia.org/wiki/Don't_repeat_yourself
[g]:http://github.com/mojombo/jekyll/wiki/yaml-front-matter
[h]:http://github.com/recurser/jekyll-plugins
[u]:http://github.com/plusjade/jekyll-bootstrap
