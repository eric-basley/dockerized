## The Use of Docker API to Automate Deployment

This repository is the main code example used in [dockerized blog](http://blog.redpelicans.com/dockerized).

### Install

You need Nodejs, npm and docker running.

### Usage

We have2 repositories, one for a sample [project](https://github.com/redpelicans/dockerized-app.git) to dockerized and this one about deployment process.

Clone this last one and install node's packages:

```
  $ git clone https://github.com/eric-basley/dockerized.git
  $ npm install
```
The script let you choose the commit version you would like to build, get it on gitHub or clone dockerized-app:

```
  $ git clone https://github.com/eric-basley/dockerized-app.git
  $ git log -1 --format="%h"
  96b7d64
```
  
Now build your image:

```
  $ DEBUG=main* ./sbin/build --hash 96b7d64
  You dream of a new DockerizedApp's image?
  Let's build it...
  ...
  Container 'app' is now running with git rev: 96b7d64
  Ready to test ?
  That's all folks.
```

Check your new image:

```
  $ docker images | grep app
  app-96b7d64                  latest              1e5fc99a1368        2 minutes ago       697.7 MB
```

Check your new running container:

```
  $ docker logs -f app
  Running App version: { gitVersion: '96b7d64', revision: '96b7d64' }
```

Push your image to DockerHub as redpelicans/dockerized

```
  $ ./sbin/push --tag 
```


