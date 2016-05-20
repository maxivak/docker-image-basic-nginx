# docker-image-basic-nginx

Basic image with Nginx for docker-builder-rb

# Usage

* Install docker-builder-rb

* modify config.rb to reflect your changes

```
FROM nginx:1.10
tag "mynginx", "0.1" # name and tag for the find image


# provision

#COPY "files/nginx.conf", "/etc/nginx/nginx.conf"
COPY "files/hello.html", "/usr/share/nginx/html/"

RUN "chmod 775 -R /usr/share/nginx/html"


```

It adds file 'hello.html' to the default nginx directory.


* build image
```
cd ~/

builder -f git@github.com:maxivak/docker-image-basic-nginx.git image.tar
```

it will create new image named 'myimage:0.1' (see `tag myimage:0.1` in config.rb).

* run container from image

```
# run from image
sudo docker run --name=mynginx1 -d -p 8080:80 myimage:0.1

# enter
sudo docker exec -ti mynginx1 /bin/bash

```

* check nginx accessible on port 8080

```
http://localhost:8080/hello.html
``
