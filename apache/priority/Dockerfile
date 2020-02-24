FROM httpd:2.4
RUN  apt-get update && apt-get -y install vim

ARG HTTPD_CONF=./sample/

COPY $HTTPD_CONF/*.conf /usr/local/apache2/conf/
