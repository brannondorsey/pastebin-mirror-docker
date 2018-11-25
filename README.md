# `pastebin-mirror` Docker

A dockerized version of the [`pastebin-mirror`](https://github.com/brannondorsey/pastebin-mirror) service. Archives new pastes submitted to [pastebin.com](http://pastebin.com) in real-time from. Requires docker and docker-compose.

`pastebin-mirror` uses the Pastebin scraping API which requires a Pastebin Lifetime Pro account (one $50 payment). Once an account is purchased, a single IP address can be whitelisted [here](https://pastebin.com/doc_scraping_api). **This docker service will not archive pastes correctly unless it is running from a whitelisted IP address.**

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

Once the service is running, all new pastes will be saved to `pastebin-mirror/pastebin.db`. You can change the location of the `pastebin-mirror` source repository relative to this repository (`pastebin-mirror-docker`) via the `PASTEBIN_MIRROR_DIR` environment variable in [`.env`](.env).