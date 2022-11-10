FROM debian:buster

RUN apt-get update && apt-get install -y wget php7.3 php-common php-fpm php-mysql sendmail


COPY tools/wordpress_setup.sh /var/www/wordpress_setup.sh
COPY conf/wp-config.php /var/www/wp-config.php
COPY tools/wp-cli.phar /usr/local/bin/wp
# COPY conf/www.conf /etc/php7/php-fpm.d/www.conf
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
RUN chmod +x /usr/local/bin/wp

RUN chmod +x /var/www/wordpress_setup.sh
RUN chmod 777 /var/www/*

EXPOSE 9000

ENTRYPOINT [ "sh", "/var/www/wordpress_setup.sh" ]
CMD [ "/usr/sbin/php-fpm7.3", "-F" ]