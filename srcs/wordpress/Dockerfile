FROM debian:buster

RUN apt-get update
RUN mkdir -p /run/php/
RUN mkdir -p /var/lib/docker/volumes/
RUN apt-get install curl -y
RUN apt-get -y install php7.3 php-mysqli php-fpm wget sendmail
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY wp-config.php /var/www/
#RUN wp config create --dbname=wordpress_db --dbuser=wordpress_user --url=ade-temm.42.fr --allow-root
#RUN wp db create --allow-root
#RUN wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org --allow-rootwp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org --allow-root
EXPOSE 9000

COPY entrypoint.sh .
COPY ww.conf /etc/php/7.3/fpm/pool.d
#RUN chmod 777 /var/www/html

ENTRYPOINT [ "sh", "entrypoint.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
