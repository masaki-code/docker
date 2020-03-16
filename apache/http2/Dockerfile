FROM httpd:2.4

RUN sed -i \
        -e 's/^#\(Include .*httpd-ssl.conf\)/\1/' \
        -e 's/^#\(LoadModule .*mod_ssl.so\)/\1/' \
        -e 's/^#\(LoadModule .*mod_socache_shmcb.so\)/\1/' \
        -e 's/^#\(LoadModule .*mod_http2.so\)/\1/' \
        conf/httpd.conf

RUN mkdir /usr/local/apache2/conf/include/ &&  \
    echo 'Include conf/include/*.conf ' >> /usr/local/apache2/conf/httpd.conf

COPY ./confssl/*    /usr/local/apache2/conf/
COPY ./conf/*.conf  /usr/local/apache2/conf/include/
