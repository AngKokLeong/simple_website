FROM ubuntu:24.04

RUN apt-get -yq update
RUN apt-get -yq install apache2

COPY ./html ./var/www/html
COPY ./css ./var/www/html/css

#RUN cp -r /website /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]