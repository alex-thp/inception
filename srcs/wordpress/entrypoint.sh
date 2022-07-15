echo "

Entering script

"
set -xv
apt-get install sudo
sudo apt-get install less
export PATH=$PATH:/usr/local/mysql/bin
cd /var/www/ 
wp core download --allow-root
wp core install --url=ade-temm.42.fr --title="WP-CLI" --admin_user=wordpress_user --admin_password=wordpress_secret --admin_email=alexandre2t@hotmail.fr --allow-root
wp user create --allow-root super_user alexandre2t@hotmail.fr --user_pass=super_secret


/usr/sbin/php-fpm7.3 --nodaemonize
