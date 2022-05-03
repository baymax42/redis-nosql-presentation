# redis-nosql-presentation

## Prerequisites

Docker and Docker Compose should be installed.
See <https://docs.docker.com/get-docker/> for more information about installation.

## Structure

On `main` branch there is a base Docker configuration to get you started.
There will be exercises which will require you to perform some configuration of Redis or starting another instances of Redis.

In case something goes horribly wrong, there are branches with solutions to not keep you stalled in place.

## Scripts

There is a helper script which will auto start services defined in `docker-compose.yml` and connect to provided container (using container name).

If you don't want to use this script - simply run:

```bash
docker-compose up # start services
docker exec -it <CONTAINER_NAME> redis-cli # start interactive session and run `redis-cli` in container
```
