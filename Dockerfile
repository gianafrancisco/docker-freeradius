FROM ubuntu

ADD fs/ /

MAINTAINER Francisco Giana <gianafrancisco@gmail.com>

RUN apt-get update && \
	apt-get -y install libmysqlclient18 libpq5 php5-common php5-gd php-pear php-db libapache2-mod-php5 php-mail apache2 php5-mysql && \
	cd /opt/ && tar -zxvf /opt/freeradius.tgz && ldconfig && \
	rm -f /etc/apache2/sites-available/000-default.conf && \
	mv /etc/apache2/sites-available/000-default.conf.daloradius /etc/apache2/sites-available/000-default.conf

EXPOSE 1812 1813 80

CMD /opt/freeradius/sbin/radiusd -X