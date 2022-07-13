CREATE DATABASE IF NOT EXISTS db_wordpress;
CREATE USER IF NOT EXISTS 'wordpress_user'@'%' IDENTIFIED BY 'wordpress_secret';
GRANT ALL PRIVILEGES ON db_wordpress.* TO 'wordpress_user'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_secret';
