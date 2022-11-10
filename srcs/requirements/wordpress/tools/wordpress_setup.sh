#!/bin/sh
# sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf";
chown -R www-data:www-data /var/www/;

chown -R 755 /var/www/;

mkdir -p /run/php/;

if [ ! -d /var/www/html/wordpress ]; then
# if ! wp core --allow-root is-installed ; then
	mkdir -p /var/www/html/wordpress;
	cd /var/www/html/wordpress;
	wp core download --allow-root;
	mv /var/www/wp-config.php /var/www/html/wordpress;
	# echo "Creating config..."
	# wp config create --allow-root --dbname=${WORDPRESS_TITLE} --dbuser=${WORDPRESS_USER} --dbpass=${WORDPRESS_PWD} --dbhost=${WORDPRESS_DB_HOST}
	# echo "Config created successfully!"
	wp core install --allow-root --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN} --admin_password=${WORDPRESS_ADMIN_PW} --admin_email=${WORDPRESS_ADMIN_MAIL};
	wp user create --allow-root ${WORDPRESS_USER} ${WORDPRESS_USER_MAIL} --user_pass=${WORDPRESS_USER_PW};
fi

exec "$@"