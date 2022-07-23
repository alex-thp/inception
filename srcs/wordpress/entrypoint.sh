echo "

Entering script

"
set -xv
chown -R www-data /var/www/html
#apt-get install sudo
#sudo apt-get install less
#export PATH=$PATH:/usr/local/mysql/bin
cd /var/www/html
#wp core download --allow-root
#wp core install --url=ade-temm.42.fr --title="WP-CLI" --admin_user=wordpress_user --admin_password=wordpress_secret --admin_email=alexandre2t@hotmail.fr --allow-root
wp core download --allow-root
wp core install --url=$URL --title=$WORDPRESS_SITENAME --admin_user=$WORDPRESS_SUPER --admin_password=$WORDPRESS_SUPER_SECRET --admin_email=$SUPER_EMAIL --allow-root
#wp core install --url=ade-temm.42.fr --title=Mon_site --admin_user=super_user --admin_password=super_secret --admin_email=admin@admin.com --allow-root
wp user create nouveau alexandre2t@hotmail.fr --role=author --user_pass=$NEW_PASS --allow-root
#wp user create wordpress_user alexandre2t@hotmail.fr --role=author --user_pass=wordpress_secret --allow-root


/usr/sbin/php-fpm7.3 --nodaemonize
