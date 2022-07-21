FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

#RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY entrypoint.sh .
COPY datab.sql /var/www/

RUN	service mysql start && mysql < /var/www/datab.sql 
#&& rm -f /var/www/datab.sql

#RUN service mysql restart
#stop

#RUN rm -rf /var/lib/mysql/*

#RUN sleep 10

#CMD ["mysqld", "--init-file=/var/www/datab.sql"]
ENTRYPOINT ["bash", "entrypoint.sh"]
