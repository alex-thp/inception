all:
	sudo docker-compose up -d

clean:
	sudo docker container stop container_nginx
	sudo docker container stop container_mariadb
	sudo docker container stop container_wordpress
	sudo docker container rm -f container_nginx
	sudo docker container rm -f container_mariadb
	sudo docker container rm -f container_wordpress
	sudo docker image rm -f inception_nginx
	sudo docker image rm -f inception_mariadb
	sudo docker image rm -f inception_wordpress
	sudo docker volume rm -f volume_wordpress
	sudo docker volume rm -f volume_mariadb

re: clean all

exec_nginx:
	sudo docker container exec -it container_nginx bash

exec_wordpress:
	sudo docker container exec -it container_wordpress bash

exec_mariadb:
	sudo docker container exec -it container_mariadb bash
