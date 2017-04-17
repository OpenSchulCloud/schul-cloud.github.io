---
layout: blog-post
title: How To Add Blog Post
language: en
author: tekon92
---

on this post i will explain some things, such as :
1. How to use git and github
2. How to add your user name to the `_data/people.yml` file
3. what goes into the header?
4. where and how to add the blog post.

<!--more-->

### 1. How To Use GIT and Github

referring to [git-scm-website](https://git-scm.com/) `Git` is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. and `GitHub` is a web-based Git or version control repository and Internet hosting service. It offers all of the distributed version control and source code management (SCM) functionality of Git as well as adding its own features. It provides access control and several collaboration features such as bug tracking, feature requests, task management, and wikis for every project.

to use git and GitHub you can follow below links
- a 15 minutes git tutorial: http://try.github.io/ if you like to use the console
- https://desktop.github.com/ - if you like to use the desktop app of github (I recommend it for Windows)
- General Workflow: https://guides.github.com/introduction/flow/index.html

### 2. How to add your user name to the `_data/people.yml` file

if you want to add new post. username of the creator is required. to add new one you can follow below steps:
- open `_data/people.yml` file from the root folder.
- add new user like format below
```
tekon92:
  github: tekon92
  name: Rian Pauzi
  url: pauzirian.com
```
- and dont forget to save it

### 3. What Goes into Header

every new blog post created, it requires header that contain like example below

```
layout: # what layout you want to use. ex: blog-post
title: # title of the blog post. ex: Technischer Bericht veröffentlicht
language: # language of the blog post. ex: en (for english)
author: # the creator of the blogpost. ex: bachelorproject (please check above step to add new username)
```


### 4. Where and How to add new Blog Post

the location of the blog post is at `dev/_posts`
to add new blog post, is like below:
1. create new file using `YYYY-MM-DD-title.md` format. example `2017-04-15-how-to-add-blog-post.md`
2. add the header like below format for example
```
---
layout: blog-post
title: Serlo zum Besuch beim Schul-Cloud Team
language: en
author: janrenz
---
```
please find above step before this for the explanation whats inside of header.
3. after you add header, you can create the main content of the blog post.
4. and dont forget to save it.
