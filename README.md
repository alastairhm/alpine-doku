# Doku Wiki running on Alpine Docker Image

Doku Wiki running on Lighttpd/PHP Docker Image

Initial images < 50Mb

## Running

docker run --name "my-wiki" -d -p 80:80 alastairhm/alpine-doku

## Data Persistence

### Backup

You can copy your Wiki out of your container with

```bash
docker cp my-wiki:/var/doku/data ./
docker cp my-wiki:/var/doku/conf ./
```

### Restore

Startup a new instance of your Doku container then

```bash
docker cp data my-wiki:/var/doku/
docker cp conf my-wiki:/var/doku/
docker my-wiki stop
docker my-wiki start
```

