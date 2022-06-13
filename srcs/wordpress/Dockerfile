FROM debian:buster

RUN apt-get update
RUN mkdir -p /run/php/
RUN apt-get -y install php7.3 php-mysqli php-fpm wget sendmail

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]

# FROM debian:buster

# RUN apt-get update
# RUN apt-get install curl -y
# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp

# RUN apt-get install php7.3 php-mysqli php-fpm -y

# CMD ["php-fpm", "-F", "-R;"]