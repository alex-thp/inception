apt-get install sudo
sudo apt-get install less
#adduser --disabled-password wordpress_user
#sudo -u wordpress_user -i -- wp core download
#sudo -u wordpress_user -i -- wp config create --dbname=wordpress_db --dbuser=wordpress_user --url=ade-temm.42.fr
#wp config create --dbname=wordpress_db --dbuser=wordpress_user --url=ade-temm.42.fr --allow-root
#sudo -u wordpress_user -i -- wp db create
#sudo -u wordpress_user -i -- wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org
cd /var/www/ && wp core download --allow-root
wp db create --allow-root
wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org --allow-root