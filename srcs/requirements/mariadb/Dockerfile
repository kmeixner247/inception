FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y mariadb-client mariadb-server

COPY conf/my.cnf /etc/mysql/
COPY conf/mysql_setup.sh /var/mariadb/
COPY conf/setup.sql /var/mariadb/

RUN chmod 777 /var/mariadb/mysql_setup.sh
RUN chmod 777 /var/mariadb/setup.sql
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 777 /var/run/mysqld

EXPOSE 3306

ENTRYPOINT [ "/var/mariadb/mysql_setup.sh" ]

CMD [ "mysqld", "--user=mysql", "--init-file=/var/mariadb/setup.sql" ]