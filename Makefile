.PHONY: run
run:
	docker-compose up
.PHONY: stop
stop:
	docker ps -aq | xargs docker stop
.PHONY: rm-all
rm-all:
	docker ps -aq | xargs docker rm
.PHONY: rmi-all
rmi-all:
	docker images -q | xargs docker rmi
.PHONY: rmv-all
rmv-all:
	docker volume ls -q | xargs docker volume rm
