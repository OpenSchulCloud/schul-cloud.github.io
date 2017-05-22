---
layout: blog-post
title: Schul-Cloud Setup for Windows Development
language: en
author:
- niccokunzmann
- adrianjost
---

You want to setup Schul-Cloud for Windows?
These are the steps to take.

<!-- more -->

{% assign images = "/assets/img/windows-setup" %}
{% assign outputs = "/assets/output" %}


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
![]({{ images }}/03-03-install-git.png)

I chose the login:
![]({{ images }}/03-04-install-git.png)

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

If your installation fails, please see if you installed the correct node version.
I get this output, which says that node 7 is not supported.
```
npm WARN deprecated graceful-fs@1.2.3: graceful-fs v3.0.0 and before will fail on node releases >= v7.0. Please update to graceful-f
```

Test your node version:
```
>npm  --version
3.10.10

>node --version
v6.10.3
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
C:\Users\username\schulcloud-client>npm install
```

You can view the output [here]({{ outputs }}/windows-schulcloud-client-npm-install-output.txt)

## Seed the Database

Have a look if your mongodb installation is in this folder:
```
C:\Program Files\MongoDB\Server\3.4\bin
```
It looks like this to me.
![]({{ images }}/06-01-seed-db.png)

The database needs a directory for the data to store.
We will keep it in your home directory `%USERPROFILE%`.

Make sure, this is the place you want it to go:
```
C:\Users\username>echo %USERPROFILE%
C:\Users\username

```

Now, create the database directory and run the database.

```
C:\Users\username>mkdir "%USERPROFILE%\db"

C:\Users\username>"C:\Program Files\MongoDB\Server\3.4\bin\mongod" --dbpath "%USERPROFILE%\db"
2017-05-18T11:45:53.165+0200 I CONTROL  [initandlisten] MongoDB starting : pid=92848 port=27017 dbpath=C:\Users\username\db 64-bit host=strauch
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten] targetMinOS: Windows 7/Windows Server 2008 R2
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten] db version v3.4.4
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten] git version: 888390515874a9debd1b6c5d36559ca86b44babd
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten] OpenSSL version: OpenSSL 1.0.1u-fips  22 Sep 2016
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten] allocator: tcmalloc
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten] modules: none
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten] build environment:
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten]     distmod: 2008plus-ssl
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten]     distarch: x86_64
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten]     target_arch: x86_64
2017-05-18T11:45:53.166+0200 I CONTROL  [initandlisten] options: { storage: { dbPath: "C:\Users\username\db" } }
2017-05-18T11:45:53.168+0200 I STORAGE  [initandlisten] wiredtiger_open config: create,cache_size=4451M,session_max=20000,eviction=(threads_min=4,threads_max=4),config_base=false,statistics
=(fast),log=(enabled=true,archive=true,path=journal,compressor=snappy),file_manager=(close_idle_time=100000),checkpoint=(wait=60,log_size=2GB),statistics_log=(wait=0),
2017-05-18T11:45:53.201+0200 I CONTROL  [initandlisten]
2017-05-18T11:45:53.201+0200 I CONTROL  [initandlisten] ** WARNING: Access control is not enabled for the database.
2017-05-18T11:45:53.201+0200 I CONTROL  [initandlisten] **          Read and write access to data and configuration is unrestricted.
2017-05-18T11:45:53.202+0200 I CONTROL  [initandlisten]
2017-05-18T11:45:53.202+0200 I CONTROL  [initandlisten] Hotfix KB2731284 or later update is not installed, will zero-out data files.
2017-05-18T11:45:53.202+0200 I CONTROL  [initandlisten]
2017-05-18T11:45:54.534+0200 I FTDC     [initandlisten] Initializing full-time diagnostic data capture with directory 'C:/Users/username/db/diagnostic.data'
2017-05-18T11:45:54.545+0200 I INDEX    [initandlisten] build index on: admin.system.version properties: { v: 2, key: { version: 1 }, name: "incompatible_with_version_32", ns: "admin.system
.version" }
2017-05-18T11:45:54.545+0200 I INDEX    [initandlisten]          building index using bulk method; build may temporarily use up to 500 megabytes of RAM
2017-05-18T11:45:54.547+0200 I INDEX    [initandlisten] build index done.  scanned 0 total records. 0 secs
2017-05-18T11:45:54.548+0200 I COMMAND  [initandlisten] setting featureCompatibilityVersion to 3.4
2017-05-18T11:45:54.549+0200 I NETWORK  [thread1] waiting for connections on port 27017
```

Now, the database is running.

In an other console window, we need to log in and create the database for the server.

Execute this command to log into the database and open the command shell of the database:


```
C:\Users\username>"C:\Program Files\MongoDB\Server\3.4\bin\mongo"
MongoDB shell version v3.4.4
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.4.4
Welcome to the MongoDB shell.
For interactive help, type "help".
For more comprehensive documentation, see
        http://docs.mongodb.org/
Questions? Try the support group
        http://groups.google.com/group/mongodb-user
Server has startup warnings:
2017-05-18T11:45:53.201+0200 I CONTROL  [initandlisten]
2017-05-18T11:45:53.201+0200 I CONTROL  [initandlisten] ** WARNING: Access control is not enabled for the database.
2017-05-18T11:45:53.201+0200 I CONTROL  [initandlisten] **          Read and write access to data and configuration is unrestricted.
2017-05-18T11:45:53.202+0200 I CONTROL  [initandlisten]
2017-05-18T11:45:53.202+0200 I CONTROL  [initandlisten] Hotfix KB2731284 or later update is not installed, will zero-out data files.
2017-05-18T11:45:53.202+0200 I CONTROL  [initandlisten]
> 
```

Now, use the following commands to create the user `username` with the password `pwd`.
While doing this, you can notice output in the `mongod` window.

```
use schulcloud;
```
and 

```
db.createUser({user:"username", pwd: "pwd", roles:[{role:"dbOwner", db: "schulcloud"}]});
```

Output:

```
> use schulcloud;
switched to db "schulcloud"
> db.createUser({user:"username", pwd: "pwd", roles:[{role:"dbOwner", db: "schulcloud"}]});
Successfully added user: {
        "user" : "username",
        "roles" : [
                {
                        "role" : "dbOwner",
                        "db" : "schulcloud"
                }
        ]
}
> exit
bye
```

Now, we need to put test data into the database in the server directory:

```
C:\Users\username>dbseed.bat
```

Note: if this file is not present, you can get it from [here](https://github.com/schul-cloud/schulcloud-server/pull/165).


## Start the Server

Make sure that the database is runnning.
Now, you can start the server.

```
C:\Users\username\schulcloud-server>npm run startd

> schulcloud@0.0.0 startd C:\Users\username\schulcloud-server
> nodemon src/

[nodemon] 1.11.0
[nodemon] to restart at any time, enter `rs`
[nodemon] watching: *.*
[nodemon] starting `node src/`
warn: The AWS config couldn't be read
[Thu May 18 2017 13:28:09] [LOG]   Mongoose option.lean is false. Use hook.results.toObject() to convert the results to JS objects
[Thu May 18 2017 13:28:10] [LOG]   Mongoose option.lean is false. Use hook.results.toObject() to convert the results to JS objects
[Thu May 18 2017 13:28:10] [LOG]   Mongoose option.lean is false. Use hook.results.toObject() to convert the results to JS objects
[Thu May 18 2017 13:28:10] [LOG]   Mongoose option.lean is false. Use hook.results.toObject() to convert the results to JS objects
[Thu May 18 2017 13:28:11] [LOG]   info:    Schul-Cloud application started on http://localhost:3030
```

You can now visit the server at http://localhost:3030
It should look like this:

![]({{ images }}/07-01-start-server.png)

## Test the Server

The server can be tested.

The lint tests test if the source code is consistent in style.

```
C:\Users\username\schulcloud-server>npm run lint

> schulcloud@0.0.0 lint C:\Users\username\schulcloud-server
> eslint ./src ./test --ext .js --fix

```

The other tests do not work under Windows (2017/May/18).
```
C:\Users\username\schulcloud-server>npm run test
```

## Start the Client

When the server and the database are running, the client can be started.
Open a third command line window at the client.

This command compiles the changed files as soon as you edit them.
```
C:\Users\username\schulcloud-client>gulp watch
```
You can view the output [here]({{ outputs }}/windows-gulp-watch-output.txt).

Now, you open another window to run the client.
```
C:\Users\username\schulcloud-client>npm run watch

> schulcloud-express@0.0.0 watch C:\Users\username\schulcloud-client
> nodemon --watch ./ --watch views/ --watch controllers/ --watch build/ ./bin/www

[nodemon] 1.11.0
[nodemon] to restart at any time, enter `rs`
[nodemon] watching: C:\Users\username\schulcloud-client/**/* C:\Users\username\schulcloud-client\views/**/* C:\Users\cheche\Documents\programmi
ertes\schulcloud-client\controllers/**/* C:\Users\username\schulcloud-client\build/**/*
[nodemon] starting `node ./bin/www`
Listening on port 3100
```

The client starts at http://localhost:3100

![]({{ images }}/07-01-start-server.png)

## Test the Client

TODO. Please edit this page -.o

## Create a pull-request

If you want to contribute to Schul-Cloud, you need to for the repositories.

- [for schulcloud-server](https://github.com/niccokunzmann/schulcloud-server/fork)
- [for schulcloud-client](https://github.com/niccokunzmann/schulcloud-client/fork)

Then, pull and push the changes, ask if you do not know it, how to create a pull-request and
fill this document for others.