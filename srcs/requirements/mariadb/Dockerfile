FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y mariadb-client mariadb-server

COPY conf/my.cnf /etc/mysql/
COPY conf/mysql_setup.sh /var/mariadb/

RUN chmod 777 /var/mariadb/mysql_setup.sh
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:mysql /var/run/mysqld
RUN chmod 777 /var/run/mysqld

ENTRYPOINT [ "/var/mariadb/mysql_setup.sh" ]

CMD [ "mysqld" ]