FROM debian:buster

RUN apt-get update
RUN mkdir -p /run/php/
RUN mkdir -p /var/lib/docker/volumes/
RUN apt-get install curl -y
RUN apt-get -y install php7.3 php-mysqli php-fpm wget sendmail
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN apt-get install -y mariadb-client

COPY wp-config.php /var/www/
#EXPOSE 9000

RUN mkdir -p /var/www/html
COPY entrypoint.sh .
COPY www.conf /etc/php/7.3/fpm/pool.d
#RUN chmod 777 /var/www/html


#RUN sh -xv entrypoint.sh

ENTRYPOINT [ "sh", "-xv", "entrypoint.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
