echo "

Entering script

"

apt-get install sudo
sudo apt-get install less
sudo apt-get install mysql
export PATH=$PATH:/usr/local/mysql/bin
grep tail
cd /var/www/ && wp core download --allow-root
wp db create --allow-root
wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wordpress_user --admin_password=wordpress_secret --allow-root
