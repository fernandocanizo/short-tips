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
