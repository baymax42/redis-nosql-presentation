# Solution

See [`redis.conf`](./shared/redis.conf) for configuration.

```redis
127.0.0.1:6379> CONFIG GET save
1) "save"
2) "30 1000"
127.0.0.1:6379> CONFIG GET appendonly
1) "appendonly"
2) "yes"
127.0.0.1:6379> CONFIG GET appendfsync
1) "appendfsync"
2) "everysec"
```

Commands:

```redis
CONFIG SET save ""
CONFIG SET appendonly no
```
