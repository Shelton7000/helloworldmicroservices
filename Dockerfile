FROM node:latest
MAINTAINER Mickael BARON  

RUN npm install -g grunt-cli && npm install -g http-server

WORKDIR /
EXPOSE 8083
ADD ["bower.json","Gruntfile.js","package.json","/mnt/sda1/var/lib/docker/tmp"]

RUN npm install && grunt dependencies



ADD src /src
RUN grunt package








ENTRYPOINT ["http-server","/", "-p", "8083"]