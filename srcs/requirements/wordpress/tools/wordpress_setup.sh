#!/bin/sh

chown -R www-data:www-data /var/www/;

chown -R 755 /var/www/;

mkdir -p /run/php/;

if [ ! -d /var/www/html/wordpress ]; then
	mkdir -p /var/www/html/wordpress;
	cd /var/www/html/wordpress;
	wp core download --allow-root;
	mv /var/www/wp-config.php /var/www/html/wordpress;
	wp core install --allow-root --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN} --admin_password=${WORDPRESS_ADMIN_PW} --admin_email=${WORDPRESS_ADMIN_MAIL};
	wp user create --allow-root ${WORDPRESS_USER} ${WORDPRESS_USER_MAIL} --user_pass=${WORDPRESS_USER_PW};
fi

exec "$@"