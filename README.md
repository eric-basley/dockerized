## The Use of Docker API to Automate Deployment

This repository is the main code example used in [dockerized blog](http://blog.redpelicans.com/dockerized).

### Install

You need Nodejs, npm and docker running.

### Usage

We should have 2 repositories, one for the project and an other one to contain
code about deployment, but to simplify we merged all in one.

Clone this repo and install node's packages:

```
  $ git clone https://github.com/eric-basley/dockerized.git
  $ npm install
```

Build your image:

```
  $ ./sbin/build
  ...
```

Check your new image:


```
  $ docker images
  ...

```

Run your container:


```
  $ docker run -it dockerized
  ...
```


Push your image to DockerHub as redpelicans/dockerized


```
  $ ./sbin/push --tag 
```


