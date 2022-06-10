FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

RUN	service mysql start

CMD ["mysqld"]