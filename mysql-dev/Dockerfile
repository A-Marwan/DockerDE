FROM mar2max/mysql
MAINTAINER A-Marwan <amamou.marwan@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install apache2 php5 libapache2-mod-php5 php5-mysql zip

WORKDIR /tmp

RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.4.12/phpMyAdmin-4.4.12-all-languages.zip -O phpMyAdmin.zip

RUN rm -Rf /var/www/html && \
    unzip phpMyAdmin.zip && \
    mv  phpMyAdmin-4.4.12-all-languages /var/www/html

ADD config.inc.php /var/www/html/

ADD run.sh /run.sh
RUN chmod 755 /*.sh
