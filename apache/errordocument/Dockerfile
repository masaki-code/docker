FROM httpd:2.4

RUN echo 'Include conf/include/*.conf ' >> /usr/local/apache2/conf/httpd.conf

RUN mkdir -p \
    /usr/local/apache2/htdocs/web1/ \
    /usr/local/apache2/htdocs/web2/ 

COPY ./conf/*.conf /usr/local/apache2/conf/include/

COPY ./public/*.html      /usr/local/apache2/htdocs/
COPY ./public/web1/*.html /usr/local/apache2/htdocs/web1/
COPY ./public/web2/*.html /usr/local/apache2/htdocs/web2/
