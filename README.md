# BIND Container

[![Docker Pulls](https://img.shields.io/docker/pulls/joebiellik/bind.svg)](https://hub.docker.com/r/joebiellik/bind/)
[![Docker Stars](https://img.shields.io/docker/stars/joebiellik/bind.svg)](https://hub.docker.com/r/joebiellik/bind/)
[![Docker Build](https://img.shields.io/docker/cloud/automated/joebiellik/bind.svg)](https://hub.docker.com/r/joebiellik/bind/)
[![Docker Build Status](https://img.shields.io/docker/cloud/build/joebiellik/bind.svg)](https://hub.docker.com/r/joebiellik/bind/)

[BIND](http://bind9.net/) server running on [Alpine Linux](https://hub.docker.com/_/alpine/).

## Configuration

See [example directory](https://github.com/jcbiellikltd/docker-bind/tree/master/example) for sample config file.

## Quickstart

```yml
bind:
  image: joebiellik/bind

  volumes:
    # You must provide a config file
    - ./named.conf:/etc/bind/named.conf

    # Zone files
    - ./zones:/var/lib/bind

  ports:
    - "53:53/tcp"
    - "53:53/udp"
```
