# Working with Docker

## Build docker image
### `docker build -t udemy-docker-kube/6-frontend -f Dockerfile.dev .`

## Run development container
- ### CLI
    `docker run -it -p 3000:3000 -v /app/node_modules -v $(pwd):/app udemy-docker-kube/6-frontend`
- ### docker-compose
    `docker-compose up`

## Run test inside container
### `docker run -it udemy-docker-kube/6-frontend yarn test`
