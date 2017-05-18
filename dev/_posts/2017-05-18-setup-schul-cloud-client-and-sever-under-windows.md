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
{{ assign outputs = "/assets/output" }}


## Install Mongo DB

Mongodb is the database for the server. All data is stored there.

Download Mongo DB from 
https://www.mongodb.com/download-center#community

![]({{ images }}/01-01-download-db.png)
![]({{ images }}/01-02-download-db.png)
![]({{ images }}/01-03-download-db.png)

1. next
2. accept license agreement
3. complete install

## Install node.js

The client and server are written in Node.JS, JavaScript.

Go to 
https://nodejs.org/en/download/


![]({{ images }}/02-01-install-node-js.png)
![]({{ images }}/02-02-install-node-js.png)

1. next
2. Accept license agreement
3. let the defaults be like they are
   ![]({{ images }}/02-03-install-node-js.png)
   

## Install Git

Git is the version control system (VCS) we use to exchange the source code
and write several versions of it.
All the Schul-Cloud repositotries are hosted on [Github](https://github.com/schul-cloud).

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


## Install the Packages (Server)

![]({{ images }}/05-01-install-packages.png)

The command promt opens.

Type in 
```
npm install
```
and press ENTER.

For me, installation took a while and I saw output like this:

```
C:\Users\username\schulcloud-server>npm install
npm WARN deprecated feathers-mongoose@3.6.2: Upgrade to the lates version of feathers-mongoose. See https://github.com/feathersjs/feathers-mongoose/blob/master/CHANGELOG.md for changes
[                ..] - extract:source-map: sill gunzTarPerm modified mode [ 'test/vectors/byte0066.dat', 493, 511 ]
```

You can view the whole output in [here]({{ outputs }}/windows-schulcloud-server-npm-install-output.txt).

Next, we need to install `nodemon` and `gulp` to update the running server without restarting when editing the source code.
This is really nice for development.

Type in 
```
npm install -g nodemon gulp
```
and press ENTER.

Installation takes a while. You can view the output [here]({{ outputs}}/windows-schulcloud-server-npm-install-gulp-output.txt).

## Install the Packages (Client)

We installed the packages for the server.
The server itself has no user interface.
The client is what the Schul-Cloud users see.


Go into the directory of the client. You can do it with the command line or Github Desktop:
```
C:\Users\username\schulcloud-server>cd ..
C:\Users\username>cd schulcloud-client
```

Now, install the packages as before.
```
```


## Seed the Database




## Start the Server


## Test the Server


## Start the Client


## Test the Client

