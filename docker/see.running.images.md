# A `docker ps` that shows image ids

```
docker inspect --format='{{.Id}} {{.Name}} {{.Image}}' $(docker ps -aq)
```
