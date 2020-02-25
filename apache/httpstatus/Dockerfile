FROM httpd:2.4
RUN  apt-get update && apt-get -y install vim

RUN  mkdir /usr/local/apache2/htdocs/denied/
COPY ./*.conf /usr/local/apache2/conf/
