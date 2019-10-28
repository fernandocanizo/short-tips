# Stop and remove all docker containers

```
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)
```
