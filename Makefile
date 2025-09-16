all: build

prod:
	docker compose --file ./docker-compose.yml up -d
build:
	docker compose --file ./docker-compose.yml build
dev:
	docker compose --file ./docker-compose.yml up -d
