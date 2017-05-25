FROM dockerizedrupal/php-5.3
LABEL maintainer "johnpaulada@gmail.com"
WORKDIR /var/www
COPY ./setup.sh /var/www/
COPY ./bin/* /usr/local/bin/
RUN /bin/bash /var/www/setup.sh
