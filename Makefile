all:
	mkdir -p ~/alex2tsudo/home/ade-temm/data/volume_wordpress
	mkdir -p ~/alex2tsudo/home/ade-temm/data/volume_mariadb
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