# Nuxt.js and Firebase on Alpine

Nuxt.js and firebase-tools on Alpine.

Supports node v8.

## installed node version
- node v6.11.5
- node v8.11.1

## node package manager
- yarn

## installed node modules
- create-nuxt-app
- firebase-tools

## build

```
$ docker build -t alpine-nuxt-firebase .
```

## firebase login

```
$ firebase login --no-localhost
```

## start development

```
$ docker run -it --mount type=bind,src=$(pwd)/,dst=/apps -p 80:80 -p 3000:3000 -p 5000:5000 -p 5001:5001 alpine-nuxt-firebase /bin/bash

bash-4.4# cd /apps
bash-4.4# create-nuxt-app project-name
bash-4.4# cd project-name
bash-4.4# yarn dev
```
open http://localhost:3000/

## firebase serve

```
bash-4.4# yarn build
bash-4.4# firebase serve --host 0.0.0.0
```
open http://localhost:5000/
