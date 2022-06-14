apt-get install sudo
sudo apt-get install less
adduser --disabled-password wordpress_user
sudo -u wordpress_user -i -- wp core download --path=wpclidemo.dev
sudo -u wordpress_user -i -- wp config create --dbname=wordpress_db --dbuser=wordpress_user --prompt=dbpass
sudo -u wordpress_user -i -- wp db create
sudo -u wordpress_user -i -- wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org