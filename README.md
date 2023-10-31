# Raspify

<img src="https://upload.wikimedia.org/wikipedia/fr/thumb/3/3b/Raspberry_Pi_logo.svg/1200px-Raspberry_Pi_logo.svg.png" width="80" />

All necessary configuration for RaspberryPI, Justboom and spotifyd

## Install and run

```sh
$ git clone https://github.com/baptooo/raspify.git
$ cd raspify
$ sh install.sh
# $ sh install-spotifyd.sh # Install spotifyd only
# $ sh install-airplay.sh # Install shairport-sync only
```

## Debug the script with docker

**Build and run**

```sh
$ docker compose build
$ docker compose up
```

**Run it in interactive mode**

```sh
$ docker compose run -it raspify sh
```

## Made from official doc of spotifyd service

https://docs.spotifyd.rs/installation/Raspberry-Pi.html
