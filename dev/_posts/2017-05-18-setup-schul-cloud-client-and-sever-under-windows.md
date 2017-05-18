---
layout: blog-post
title: Setup Schul-Cloud for Development under Ubuntu
language: en
author:
- niccokunzmann
- adrianjost
---

You want to setup Schul-Cloud for Windows?
These are the steps to take.

<!-- more -->

{{ assign images = "/assets/img/windows-setup" }}

## Install node.js

https://nodejs.org/en/download/


![]({{ images }}/02-01-install-node-js.png)
![]({{ images }}/02-02-install-node-js.png)

1. next
2. Accept license agreement
3. let the defaults be like they are
   ![]({{ images }}/02-03-install-node-js.png)
   

## Install Git

Install Github Desktop

https://desktop.github.com/

![]({{ images }}/03-01-install-git.png)
![]({{ images }}/03-02-install-git.png)

Log in to github (2) or create your GitHub Account first (1):
![]({{ images }}/03-02-install-git.png)

I chose the login:
![]({{ images }}/03-02-install-git.png)

## Download the Repositories

![]({{ images }}/04-01-clone-repo.png)

Repository URL: https://github.com/schul-cloud/schulcloud-client  
   
![]({{ images }}/04-02-clone-repo.png)
1. Enter `schul-cloud/schulcloud-client  `
2. Choose the destination
3. clone
![]({{ images }}/04-03-clone-repo.png)

Now, we are going to do the same for the server repository:

Repository URL: https://github.com/schul-cloud/schulcloud-server  
![]({{ images }}/04-04-clone-repo.png)
![]({{ images }}/04-05-clone-repo.png)

Here, you can switch between the repositories.
![]({{ images }}/04-06-clone-repo.png)
![]({{ images }}/04-07-clone-repo.png)



![]({{ images }}/04-05-clone-repo.png)



## Install the Packages

## Install Mongo DB

Download Mongo DB from 
https://www.mongodb.com/download-center#community

![]({{ images }}/01-01-download-db.png)
![]({{ images }}/01-02-download-db.png)
![]({{ images }}/01-03-download-db.png)

1. next
2. accept license agreement
3. complete install


## Seed the Database


## Start the Server


## Test the Server


## Start the Client


## Test the Client

