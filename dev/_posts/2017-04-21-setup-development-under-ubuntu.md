---
layout: blog-post
title: Setup Schul-Cloud for Development under Ubuntu
language: en
author:
- niccokunzmann
---

I want to develop Schul-Cloud on my local Ubuntu virtual machine.
These are the steps I took.

<!-- more -->

## Install node.js

`apt-get install npm` will not work as this installs an old version of node.
We need a later version.
This can be found on the [node.js download page][node-download].
I use version 6 LTS (Long Term Support).

```shell
wget https://nodejs.org/dist/v6.10.2/node-v6.10.2-linux-x64.tar.xz
tar -xf node-v6.10.2-linux-x64.tar.xz
rm node-v6.10.2-linux-x64.tar.xz
echo "export PATH=\"~/.npm-global/bin:/home/coderdojo/node-v6.10.2-linux-x64/bin:\$PATH\"" >> ~/.bashrc
mkdir ~/.npm-global
source ~/.bashrc
```

`~/.npm-global` is the global install directory according to
[the fix for the default directory][fix-default].

Now, I can use the `npm` command in the terminal.

```shell
$ npm

Usage: npm <command>
[...]
```

## Download the Repositories

You will need to install git.

```shell
sudo apt-get -y install git
```

And you need to clone the repositories:

```
git clone https://github.com/schul-cloud/schulcloud-client.git
git clone https://github.com/schul-cloud/schulcloud-server.git
```

## Install the Packages

These commands install the packages.

```shell
( cd schulcloud-client && npm install && npm install -g nodemon gulp )
( cd schulcloud-server && npm install )
```

## Install Mongo DB

Mongodb is used by schulcloud-server.

From [the Mongo DB install page][mongo-install]:

```shell
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get update
sudo apt-get install -y mongodb-org
mkdir ~/db
mongod --dbpath ~/db &
```

We have to create a user. Start the mongo shell
([source](http://stackoverflow.com/a/38921949/1320237)):

```shell
mongo --port 27017
```

Now, in the shell, add the user `myUserAdmin` with the password `abc123`.

```js
use admin
db.createUser(
  {
    user: "myUserAdmin",
    pwd: "abc123",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)
exit
```

Now, in the shell, you can setthe environment variables:

```
export DB_USERNAME=myUserAdmin
export DB_PASSWORD=abc123
export DB_URL=mongodb://127.0.0.1/admin
```

## Start the Server

You can start the Schul-Cloud server by running this command:

```shell
( cd schulcloud-server && npm start )
```

Output:
```
> schulcloud@0.0.0 start /home/coderdojo/schulcloud-server
> node src/

warn: The AWS config couldn't be read
Mongoose option.lean is false. Use hook.results.toObject() to convert the results to JS objects
Mongoose option.lean is false. Use hook.results.toObject() to convert the results to JS objects
Mongoose option.lean is false. Use hook.results.toObject() to convert the results to JS objects
info:    Schul-Cloud application started on http://localhost:3030
```

You can view the server at <http://localhost:3030>.
This is the website:

![](/assets/img/schulcloud-server-website.png)

You can stop the server by pressing *Control+C*.

## Test the Server

In order to test the server, you can run

```shell
npm test
```

in the `schulcloud-server` directory.
View the [example output][npm-test-server-output].


## Start the Client

According to the [documentation][docu-client-snap], we need to run these commands:

```shell
gulp watch
```
You can run it in the background using `gulp watch &`.
Gulp refreshes CSS and other files once you change the client's source code.

Output: 
```
[11:10:38] Using gulpfile ~/schulcloud-client/gulpfile.js
[11:10:38] Starting 'clean'...
[11:10:38] Starting 'watch-images'...
[11:10:38] Finished 'watch-images' after 39 ms
[11:10:38] Starting 'watch-styles'...
[11:10:38] Finished 'watch-styles' after 93 ms
[11:10:38] Starting 'watch-fonts'...
[11:10:38] Finished 'watch-fonts' after 10 ms
[11:10:38] Starting 'watch-scripts'...
[11:10:38] Finished 'watch-scripts' after 13 ms
[11:10:38] Starting 'watch-vendor'...
[11:10:38] Finished 'watch-vendor' after 114 ms
[11:10:38] Finished 'clean' after 337 ms
[11:10:38] Starting 'default'...
[11:10:38] Finished 'default' after 12 ms
[11:10:38] Starting 'watch'...
[11:10:38] Finished 'watch' after 1.37 μs
[11:10:45] gulp-imagemin: Minified 7 images (saved 18.8 kB - 8%)
```

Then, we can start the client process:

```shell
npm run watch
```
Output: 

```
> schulcloud-express@0.0.0 watch /home/user/schulcloud-client
> nodemon --watch . ./bin/www

[nodemon] 1.11.0
[nodemon] to restart at any time, enter `rs`
[nodemon] watching: *.*
[nodemon] starting `node ./bin/www`
Listening on port 3100
```

When it runs, you can visit <http://localhost:3100>.
The web page should look like this:

![](/assets/img/schulcloud-client-website.png)

## Test the Client

In the `schulcloud-client` directory, test the client by running this command:

```shell
npm test
```

View the [example output][npm-test-client-output].









[docu-client-snap]: https://github.com/schul-cloud/schulcloud-client/tree/543cbb6b6915eb0d7840d2351a0a2f08f15e073b#run
[fix-default]: https://docs.npmjs.com/getting-started/fixing-npm-permissions#option-2-change-npms-default-directory-to-another-directory
[mongo-install]: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
[node-download]: https://nodejs.org/en/download/
[npm-test-server-output]: /assets/output/schulcloud-server-npm-test-output.txt
[npm-test-client-output]: /assets/output/schulcloud-client-npm-test-output.txt
