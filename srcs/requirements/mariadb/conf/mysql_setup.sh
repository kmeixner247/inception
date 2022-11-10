#!/bin/sh

if [ ! -d "/var/lib/mysql/$WORDPRESS_DB_NAME" ]; then
	echo "Setting up database..."
	# mariadb-install-db
	mysql_install_db --user=mysql --ldata=/var/lib/mysql


	sed -i "s/WORDPRESS_DB_USER/$WORDPRESS_DB_USER/g" /var/mariadb/setup.sql
	sed -i "s/WORDPRESS_DB_PWD/$WORDPRESS_DB_PWD/g" /var/mariadb/setup.sql
	sed -i "s/WORDPRESS_DB_NAME/$WORDPRESS_DB_NAME/g" /var/mariadb/setup.sql
	sed -i "s/MYSQL_ROOT_PASSWORD/$MYSQL_ROOT_PASSWORD/g" /var/mariadb/setup.sql
fi

exec "$@"