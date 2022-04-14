# Doku Wiki running on Alpine Docker Image

Doku Wiki running on Lighttpd/PHP Docker Image

Initial images < 50Mb

## Running

```bash
docker run --name "my-wiki" -d -p 80:80 alastairhm/alpine-doku
```

Browse to install page http://localhost/install.php

## Data Persistence

You can use volume mounts to persist your data outside the container for example

```bash
docker run --name "my-wiki" -d -p 80:80 -v $(pwd)/data:/var/doku/data -v $(pwd)/conf:/var/doku/conf alastairhm/alpine-doku
```

this will create the data/ conf directories in your local directory.

There is An issue with file permissions when using the volume mounts on a Mac so;

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

```text
          _    _ __  __
    /\   | |  | |  \/  | Email    : alastair@montgomery.me.uk
   /  \  | |__| | \  / | Web      : https://blog.0x32.co.uk/
  / /\ \ |  __  | |\/| | Twitter  : @alastair_hm
 / ____ \| |  | | |  | | Mastodon : @Alastair@mastodon.me.uk
/_/    \_\_|  |_|_|  |_| (c) 2021
```

