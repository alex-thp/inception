mkdir -p /var/run/mysqld
#touch /var/run/mysqld/mysqld.sock
mysql_install_db --user=root
service mysql stop
mysqld --init-file=/var/www/datab.sql
