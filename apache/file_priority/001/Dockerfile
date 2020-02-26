FROM httpd:2.4
RUN  apt-get update && apt-get -y install vim

COPY ./*.conf   /usr/local/apache2/conf/
COPY ./*.html   /usr/local/apache2/htdocs/
