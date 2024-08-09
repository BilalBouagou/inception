DATA_FOLDER = /home/bbouagou/data
WORDPRESS = /home/bbouagou/data/wordpress
MARIADB = /home/bbouagou/data/mariadb
DOCKER_COMP_PATH = ./srcs/docker-compose.yml

all : up

up : build
	docker-compose -f $(DOCKER_COMP_PATH) up -d

down :
	docker-compose -f $(DOCKER_COMP_PATH) down

build :
ifeq ("$(wildcard $(DATA_FOLDER))", "")
	mkdir $(DATA_FOLDER)
endif
ifeq ("$(wildcard $(WORDPRESS))", "")
	mkdir $(WORDPRESS)
endif
ifeq ("$(wildcard $(MARIADB))", "")
	mkdir $(MARIADB)
endif
	docker-compose -f $(DOCKER_COMP_PATH) build

clean : down
	docker rmi -f $$(docker images -qa) || true
	docker volume rm $$(docker volume ls -q) || true
	rm -rf $(WORDPRESS) || true
	rm -rf $(MARIADB) || true