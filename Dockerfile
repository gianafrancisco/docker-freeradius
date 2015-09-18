FROM ubuntu

ADD fs/ /

MAINTAINER Francisco Giana <gianafrancisco@gmail.com>

RUN cd /opt/ && tar -zxvf /opt/freeradius.tgz && ldconfig

EXPOSE 1812 1813

CMD /opt/freeradius/sbin/radiusd -X