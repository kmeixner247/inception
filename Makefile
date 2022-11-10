up:
	docker compose -f srcs/docker-compose.yml up --build --remove-orphans

stop:
	docker compose -f srcs/docker-compose.yml stop

down:
	docker compose -f srcs/docker-compose.yml down

fclean:
	-docker stop $$(docker ps -qa)
	-docker rm $$(docker ps -qa)
	-docker rmi -f $$(docker images -qa)
	-docker volume rm $$(docker volume ls -q)
	-docker network rm $$(docker network ls -q) 2>/dev/null

	-sudo rm -rf /home/despair/data/mariadb_vol
	-sudo rm -rf /home/despair/data/wordpress_vol
	sudo mkdir -p /home/despair/data/mariadb_vol
	sudo mkdir -p /home/despair/data/wordpress_vol

setup-domain:
	@sudo bash -c 'echo "127.0.0.1	kmeixner.42.fr" >> /etc/hosts'

.PHONY: up stop down fclean setup-domain
