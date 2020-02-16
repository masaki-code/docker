FROM httpd:2.4

ARG UID=1000
RUN useradd -m -u ${UID} masaki-blog 

RUN mkdir /usr/local/apache2/conf/include/ 
RUN mkdir /home/masaki-blog/public/

RUN echo 'Include conf/include/*.conf ' >> /usr/local/apache2/conf/httpd.conf

COPY ./public/*.html /home/masaki-blog/public/
COPY ./conf/*.conf   /usr/local/apache2/conf/include/
