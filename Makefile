


up:
	sudo docker-compose -f srcs/docker-compose.yml up

stop:
	docker-compose -f srcs/docker-compose.yml stop

down:
	docker-compose -f srcs/docker-compose.yml down

#ONLY DO FOR EVAL BECAUSE IT CLEANS EVERYTHING
finalclean:
	docker stop $$(docker ps -qa)
	docker rm $$(docker ps -qa)
	docker rmi -f $$(docker images -qa)
	docker volume rm $$(docker volume ls -q)
	docker network rm $$(docker network ls -q) 2>/dev/null

.PHONY: up stop down finalclean
