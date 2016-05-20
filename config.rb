FROM nginx:1.10
tag "mynginx", "0.1" # name and tag for the find image


# provision

#COPY "files/nginx.conf", "/etc/nginx/nginx.conf"
COPY "files/hello.html", "/usr/share/nginx/html/"

RUN "chmod 775 -R /usr/share/nginx/html"
