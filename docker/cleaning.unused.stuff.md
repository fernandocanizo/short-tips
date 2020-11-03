# Cleaning unused docker stuff

To recover space from old and unused docker images, containers and networks:

1. Use `docker ps` to ensure the stuff you want to be running is running

2. `docker system prune`

3. Puede que queden imágenes que están siendo referenciadas pero no están
   corriendo, entonces:

```
docker image prune -a
```

