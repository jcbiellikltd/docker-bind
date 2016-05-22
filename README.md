# BIND
[![Docker Pulls](https://img.shields.io/docker/pulls/joebiellik/docker-bind.svg)](https://hub.docker.com/r/joebiellik/docker-bind/)

[BIND](http://www.bind9.net/) server running on [Alpine Linux](https://hub.docker.com/_/alpine/).

## Configuration
See [example directory](https://github.com/jcbiellikltd/docker-bind/tree/master/example) for sample config file.

## Quickstart
```
bind:
  image: joebiellik/bind

  volumes:
    # You must provide a config file
    - ./named.conf:/etc/bind/named.conf

    # Zones
    - ./zones:/var/lib/bind

  ports:
    - "53:53/tcp"
    - "53:53/udp"
```
