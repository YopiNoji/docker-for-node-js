FROM node:alpine
EXPOSE 8080

RUN apk update

RUN \
  apk add --no-cache python2=2.7.18-r0 make=4.2.1-r2 g++=9.3.0-r0 && \
  apk add vips-dev=8.10.1-r0 fftw-dev=3.3.8-r0 --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community --repository http://dl-3.alpinelinux.org/alpine/edge/main

RUN apk add git=2.24.3-r0 --no-cache
RUN apk add bash=5.0.11-r1 --no-cache

WORKDIR /usr/src
CMD ["/bin/bash"]
