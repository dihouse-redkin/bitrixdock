FROM nginx:1.18

COPY conf/sites/ /etc/nginx/sites-available
RUN mkdir /etc/nginx/sites-enabled/ && ln -s /etc/nginx/sites-available/*.conf /etc/nginx/sites-enabled/

COPY conf/nginx.conf /etc/nginx/
COPY conf/default.conf /etc/nginx/conf.d/
COPY conf/upstream.conf /etc/nginx/conf.d/

RUN usermod -u 1004 www-data
#RUN nginx -t

CMD ["nginx"]

EXPOSE 80 443
