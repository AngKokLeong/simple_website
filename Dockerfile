FROM ubuntu:24.04

WORKDIR /website

RUN apt-get -yq update
RUN apt-get -yq install apache2

COPY . ./

RUN cp -r /website /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]