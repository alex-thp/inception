echo "

Entering script

"

apt-get install sudo
sudo apt-get install less
export PATH=$PATH:/usr/local/mysql/bin
cd /var/www/html && wp core download --allow-root
wp user create --allow-root wordpress_user alexandre2t@hotmail.fr --user_pass=wordpress_secret
#wp db create --allow-root
#wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wordpress_user --admin_password=wordpress_secret --allow-root
