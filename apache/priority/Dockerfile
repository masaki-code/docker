FROM httpd:2.4
RUN  apt-get update && apt-get -y install vim

ARG HTTPD_CONF=./sample/httpd.conf

COPY $HTTPD_CONF /usr/local/apache2/conf/httpd.conf
