# Docker compose tutorial

Compose is a tool for defining and running multi-container Docker applications.

Based on official docker compose guide https://docs.docker.com/compose/gettingstarted/ (March 2016)

 - Build the image with Docker `docker build -t web .`
 - Run with docker `docker run --rm -t -i -p 5000:5000 --name web web`
 - Build and run with docker compose `docker-compose up`
 - Show running containers `docker-compose ps` (see exposed/linked ports)
