# Shadow Compose

## Introduction

This simple project makes it easy to setup an Outline (ShadowSocks) server.

## How to use

First, install a recent version of Docker and docker-compose. Please
refer to their official site.

Create a configuration file `config/outline.yml`. See
`config/outline_example.yml` as an example.

Use `docker-compose` to start the service:

```
docker-compose up -d
```

The server listens on the 443 port.
