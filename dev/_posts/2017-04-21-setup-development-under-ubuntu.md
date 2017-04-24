---
layout: blog-post
title: Setup Schul-Cloud for Development under Ubuntu
language: en
author:
- niccokunzmann
---

You want to develop Schul-Cloud on your local Ubuntu:
These are the steps to take.

<!-- more -->

## Install node.js

`apt-get install npm` will not work as this installs an old version of node.
We need a later version.

There are different installation methods:

- [Installation from downloaded binary][install-binary] (no administrator)
- [Installation from package repository][install-package]

You can choose one of these.

### Node Installation from Binary
[install-binary]: #installation-from-binary

This can be found on the [node.js download page][node-download].
I use version 6 LTS (Long Term Support).

```shell
wget https://nodejs.org/dist/v6.10.2/node-v6.10.2-linux-x64.tar.xz
tar -xf node-v6.10.2-linux-x64.tar.xz
rm node-v6.10.2-linux-x64.tar.xz
echo "export PATH=\"~/node-v6.10.2-linux-x64/bin:\$PATH\"" >> ~/.bashrc
source ~/.bashrc
```

### Node Installation from Package Repository
[install-package]: #node-installation-from-package-repository

Nodejs and the Node Package Manager can be installed using Apt.
Execute these commands to install:

```shell
wget https://deb.nodesource.com/setup_6.x -O nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get -y install nodejs
```

## Check the npm Installation

You can use the `npm` command in the terminal, to check if the installation worked.

```shell
$ npm

Usage: npm <command>
[...]
```

## Set Global Install Directory

`~/.npm-global` should be the global install directory according to
[the fix for the default directory][fix-default].

```shell
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo "export PATH=\"~/.npm-global/bin:\$PATH\"" >> ~/.bashrc
source ~/.bashrc
```

## Download the Repositories

You will need to install git.

```shell
sudo apt-get -y install git
```

And you need to clone the repositories:

```shell
git clone https://github.com/schul-cloud/schulcloud-client.git
git clone https://github.com/schul-cloud/schulcloud-server.git
```

## Install the Packages

These commands install the packages.

```shell
sudo apt-get install -y build-essential
( cd schulcloud-client && npm install && npm install -g nodemon gulp && npm install nodemon gulp )
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

In the shell, you can set the environment variables:

```
export DB_USERNAME=
export DB_PASSWORD=
export DB_URL=mongodb://127.0.0.1/admin
```

## Seed the Database

To feed the database with some data for development, execute this command:

```shell
( cd schulcloud-server && npm run setup )
```

## Start the Server

You can start the Schul-Cloud server by running this command:

```shell
( cd schulcloud-server && npm start )
```

Output:
```
> schulcloud@0.0.0 start ~/schulcloud-server
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
( cd schulcloud-server && npm test )
```

View the [example output][npm-test-server-output].


## Start the Client

```shell
cd schulcloud-client
```

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
> schulcloud-express@0.0.0 watch ~/schulcloud-client
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

According to the [readme][test-client-readme], ew need to set an environment
variable for the login password.
This is the password for `schueler@schul-cloud.org`.

```
export SC_DEMO_USER_PASSWORD=test
```

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
[test-client-readme]: https://github.com/schul-cloud/schul-cloud.github.io/pull/43#issuecomment-296305243
