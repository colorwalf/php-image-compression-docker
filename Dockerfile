FROM cwadmin/php7-imagick
LABEL maintainer "johnpaulada@gmail.com"
WORKDIR /var/www
COPY ./setup.sh /var/www/
COPY ./bin/* /usr/local/bin/
RUN /bin/bash /var/www/setup.sh
