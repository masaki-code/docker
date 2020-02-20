FROM httpd:2.4

RUN echo 'Include conf/include/*.conf ' >> /usr/local/apache2/conf/httpd.conf

RUN mkdir -p \
    /var/www/ \
    /var/www/web1.masaki-blog.net/ \
    /var/www/web2.masaki-blog.net/

COPY ./conf/*.conf /usr/local/apache2/conf/include/

COPY ./public/index.html /usr/local/apache2/htdocs/

COPY ./public/web1.masaki-blog.net/*.html /var/www/web1.masaki-blog.net/
COPY ./public/web2.masaki-blog.net/*.html /var/www/web2.masaki-blog.net/
