# Using Ubuntu 22.04 as base image
FROM ubuntu:22.04

# Changing current working directory to install necessary softwares
WORKDIR ~/

RUN apt-get -y update && apt-get -y install software-properties-common &&  apt-get -y install git && apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y apache2

# Enable apache2 mods
RUN a2enmod ssl && a2enmod headers && a2enmod rewrite && service apache2 restart

WORKDIR /var/www/html/

# Rename the default index file
RUN mv index.html index_old.html

# Copy code to container
COPY . /var/www/html/

COPY ./docker/000-default.conf /etc/apache2/sites-available/

EXPOSE 80

ENTRYPOINT ["apache2ctl"]

CMD ["-DFOREGROUND"]
