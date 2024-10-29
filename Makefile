# create network
# docker network create -d overlay --attachable  external_network

start-mysql: ## Start all containers
	@docker compose -f docker-compose-mysql-db.yml up --force-recreate -d

 