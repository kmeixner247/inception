up:
	-rm -rf /Users/kmeixner/data/mariadb-vol
	mkdir -p /Users/kmeixner/data/mariadb-vol
	docker compose -f srcs/docker-compose.yml up --build --remove-orphans

stop:
	docker compose -f srcs/docker-compose.yml stop

down:
	docker compose -f srcs/docker-compose.yml down

#ONLY DO FOR EVAL BECAUSE IT CLEANS EVERYTHING
fclean:
	-docker stop $$(docker ps -qa)
	-docker rm $$(docker ps -qa)
	-docker rmi -f $$(docker images -qa)
	-docker volume rm $$(docker volume ls -q)
	-docker network rm $$(docker network ls -q) 2>/dev/null
	-docker system prune -af
	-rm -rf /Users/kmeixner/data/mariadb-vol
.PHONY: up stop down fclean
