# `pastebin-mirror` Docker

A dockerized version of the [`pastebin-mirror`](https://github.com/brannondorsey/pastebin-mirror) service. Archives all new pastes from [pastebin.com](http://pastebin.com). Requires docker and docker-compose.

```bash
# clone pastebin-mirror 
git clone https://github.com/brannondorsey/pastebin-mirror

# clone this repo and navigate inside the folder
git clone https://github.com/brannondorsey/pastebin-mirror-docker
cd pastebin-mirror-docker

# launch the service and detach to archive all new pastes to:
#   ../pastebin-mirror/pastebin.db
docker-compose up -d

# you can watch the logs like this
docker-compose logs -f
```
