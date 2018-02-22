FROM node:latest
MAINTAINER Mickael BARON  

RUN npm install -g grunt-cli && npm install -g http-server

WORKDIR /workdir
EXPOSE 8083
ADD ["bower.json","Gruntfile.js","package.json","/workdir/"]

RUN npm install && grunt dependencies



ADD src /workdir/src
RUN grunt package







ENTRYPOINT ["http-server","/workdir/site", "-p", "8083"]