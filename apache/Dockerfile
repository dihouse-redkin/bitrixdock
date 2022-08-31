FROM gendosu/alpine-apache:latest

MAINTAINER pavletto

RUN apk add --no-cache apache2-proxy; \
     addgroup -g 1004 -S www; \
     adduser -G www -u 1004 -s /bin/sh -D www;

COPY conf /etc/apache2

EXPOSE 80 443

CMD /usr/sbin/httpd -DFOREGROUND 
