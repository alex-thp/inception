echo "

Entering script

"

apt-get install sudo
sudo apt-get install less
export PATH=$PATH:/usr/local/mysql/bin
cd /var/www/ && wp core download --allow-root

#wait 10
#wp db create --allow-root
#wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wordpress_user --admin_password=wordpress_secret --allow-root
