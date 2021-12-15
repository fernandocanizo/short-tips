# Docker tips

Run a shell on any container (since Docker v1.3)

```
docker exec -it "id of running container" bash
```

Run an Ubuntu latest

```
docker run -it ubuntu
```

Or choose your poison

```
docker run -it ubuntu:<version>
```

Statistics
```
docker stats
```

Clean everything not in use
```
docker system prune
```

See what's happening with a container
```
docker inspect <containerId>
```

Put a file into a container or from a container:
```
docker cp <file> <containerId>:/some/path
docker cp <containerId>:/some/path <file>
```

For `docker-compose`, ways to start:
```
restart: always
restart: unless-stopped
restart: onfailure:10
```

Logs with timestamp
```
docker logs -t --tail=10 <containerId>
```

For failing containers, we can avoid usual start up sequence by changing the
entry point to be able to investigate them
```
docker run -it --entrypoint=bash
```
