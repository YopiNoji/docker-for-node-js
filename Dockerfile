FROM node:alpine
EXPOSE 8080

RUN apk update

RUN \
  apk add --no-cache python=3.8.2-r0 make=4.3-r0 g++=9.3.0-r4 && \
  apk add vips-dev=8.9.2-r0 fftw-dev=3.3.8-r0 --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community --repository http://dl-3.alpinelinux.org/alpine/edge/main && \
  rm -fR /var/cache/apk/*

RUN apk add git=2.28.0-r0 --no-cache

WORKDIR /usr/src
RUN npm install && npm cache clean --force
CMD ["/bin/sh"]