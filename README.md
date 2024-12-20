A FastAPI, Next.js and PostgreSQL template

```
- Python: 3.12
- FastAPI: 0.115.6
- Node: 20.18
- Next.js: 15.0.4
```

# Getting started

- Install [Docker Desktop](https://www.docker.com/products/docker-desktop/). It has both Docker and Docker Compose.
- Clone the repo - `$ git clone git@github.com:nynvr/fastapi-nextjs-postgresql-template.git`
- Go to repo root - `$ cd fastapi-nextjs-postgresql-template`
- Run Docker Compose
  - `$ docker compose -f docker-compose.development.yml up --build`
  - This will run 3 services,
    - api service - FastAPI app
      - `http://0.0.0.0:8000/`
    - web service - Next.js app
      - `http://0.0.0.0:3000/`
    - db service
      - PostgreSQL

# Local development

- Use `Draw.io Integration` (VS Code Identifier: hediet.vscode-drawio) to document system design and, generally, create diagrams. The extension allows you to store your diagrams in your repository. Store them under `/docs` folder.
- Use `Kanbn Extension for Visual Studio Code` (VS Code Identifier: gordonlarrigan.vscode-kanbn) to manage your to do list. The extension allows you to store your to do list in your repository. It is based on Markdown.
  - You can just delete the `/.kanbn` folder if you don't use the extension.

# Python and Node environment management

- Since we are using Docker, environments are being handled by the containers.

# Python and Node package management

- If we need to manage (update, remove, add) Python or Node packages, we need to do it inside the containers because we are using the environment that is in the container and not the host machine.
- To execute commands inside a running container and run bash shell commands, do this - `$ docker exec -it {container-name} bash`
- For Python, make sure to `$ pip freeze > requirements.txt` if we make changes to the project's packages
- For Node, `$ npm install {package-name}` will automatically update the package.json and package-lock.json files.
- Since we are using Docker volumes, `requirements.txt` and `package.json and package-lock.json` files will be automatically updated.

# "Hot reload"

- No need to "restart" the services to see code changes
- Docker Compose is using "volumes"

# FastAPI commands

# Docker commands

- `$ docker compose -f ./docker-compose.development.yml up`
- `$ docker compose -f ./docker-compose.development.yml down`
- `$ docker compose -f ./docker-compose.development.yml up --build`
- `$ docker compose -f ./docker-compose.development.yml build`
- `$ docker exec -it {container-name} bash`
- `$ docker logs --follow`
- `$ docker system prune -a`
- `$ docker image prune -a`
- `$ docker volume prune -a`
- `$ docker network prune`
- `$ docker container prune`
