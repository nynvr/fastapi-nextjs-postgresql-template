# fastapi-nextjs-db-template

# Getting started

- `docker compose -f docker-compose.development.yml up --build`

# Python and Node environment management
- Since we are using Docker, environments are being handled by the containers.
- Python: 3.12
- Node: 20.18

# Docker commands

- `docker compose -f ./docker-compose.development.yml up`
- `docker compose -f ./docker-compose.development.yml down`
- `docker compose -f ./docker-compose.development.yml up --build`
- `docker compose -f ./docker-compose.development.yml build`
- `docker exec -it {container-name} bash`
- `docker logs --follow`
- `docker system prune -a`
- `docker image prune -a`
- `docker volume prune -a`
- `docker network prune`
- `docker container prune`