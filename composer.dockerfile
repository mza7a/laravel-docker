FROM composer:latest

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

WORKDIR /var/www/html




#FROM composer:latest

#RUN adduser -h /home/mza7a -u 1000 -D mza7a
#RUN adduser mza7a www-data && adduser mza7a
#RUN mkdir -p /home/mza7a/.composer && chown -R mza7a:mza7a /home/mza7a


#WORKDIR /var/www/html

#USER mza7a