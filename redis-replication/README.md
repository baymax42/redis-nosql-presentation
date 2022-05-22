# redis-replication

## Prerequisites

Docker and Docker Compose should be installed.
See <https://docs.docker.com/get-docker/> for more information about installation.


### Simple replication

```bash
docker-compose -f replication-compose.yml up # start services
docker exec -it redis-master-01 redis-cli -p 6379 # start interactive session and run `redis-cli` in container
```

### High availability replication with sentinel

```bash
docker-compose -f sentinel-compose.yml up # start services
docker exec -it redis-sentinel-01 redis-cli -p 26379 # start interactive session and run `redis-cli` in container
SENTINEL get-master-addr-by-name main # check current master
SENTINEL failover main # enforce failover 
SENTINEL get-master-addr-by-name main # enforce failover 
```
