# dockerfiles

> One repo to rule the Dockerfiles, one repo to find them, one repo to bring them all, and on the server bind them.

# How Do?

Make sure you've installed Docker and Docker Compose, then run `docker-compose up -d`. Boom, done.

# First Time Configuration Notes

Notes to me, for when I inevitably have to set all this up again and have forgotten how.

## Ark

### Wiki.js

* Create a `secret.env` and set `POSTGRES_PASSWORD` and `DB_PASS`.
* Port is 3000

### Plex

* Plex requires that you set a claim code, retrieved from [plex.tv/claim](https://www.plex.tv/claim). It expires after like 4 minutes, so get the claim code and set it in docker-compose.yml just before first start.
* Needs port 32400 forwarded from router.
* Create a `~/data/media/movies` and `~/data/media/tv`, and make sure they're owned by your user.

## Havoc

### qBittorrent

* The web portal is at port 8080 by default. Default username/password is `admin`/`adminadmin`.
* Change the default user and password.
* Set default save path to /media/downloads

### Jackett

* Default port is 9117.
* Disable auto updates.

### Sonarr

* Default port is 8989.
* Add Jackett indexers using Torznab
* Add qBittorrent to Download Client
* Add path to `/media/tv`. If you get error `Folder not writable by user abc`, you probably need to `chown` the folder to your user.

### Radarr

* Default port is 7878
* Add Jackett indexers using Torznab
* Add qBittorent to Download Client
* Add path to `/media/movies`

# Looking for More?

* [Check out my website](https://ryandlewis.dev)
* [:zap: Buy Me a Kilowatt :zap:](https://www.buymeacoffee.com/aVc18KuLq)
* [@RhinoDaDino on Twitter](https://twitter.com/RhinoDaDino)
* [@luckierdodge on Instagram](https://www.instagram.com/luckierdodge/)
