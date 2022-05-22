# redis-cluster

## Prerequisites

Docker and Docker Compose should be installed.
See <https://docs.docker.com/get-docker/> for more information about installation.


## Create cluster

```bash
docker-compose up # start all redis instances
docker exec -it node-01 sh # connect to one of created nodes
redis-cli --cluster create node-01:7001 node-02:7002 node-03:7003 node-04:7004 node-05:7005 node-06:7006 --cluster-replicas 1 # create cluster
docker exec -it node-01 redis-cli -c -p 7001 # to connect to cluster node we must add flag -c
```
