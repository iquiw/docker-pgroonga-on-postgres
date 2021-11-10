# Docker image for PGroonga based on Official PostgreSQL image

[![GitHub Workflow Status](https://github.com/iquiw/docker-pgroonga-on-postgres/actions/workflows/docker.yml/badge.svg?branch=11)](https://github.com/iquiw/docker-pgroonga-on-postgres/actions/workflows/docker.yml?query=branch%3A11)
[![Docker Pulls](https://img.shields.io/docker/pulls/iquiw/pgroonga-on-postgres)](https://hub.docker.com/r/iquiw/pgroonga-on-postgres)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/iquiw/pgroonga-on-postgres)](https://hub.docker.com/r/iquiw/pgroonga-on-postgres)

This image provides PostgreSQL with PGroonga extension based on
official [PostgreSQL image](https://hub.docker.com/_/postgres/).

It includes the following version of PGroonga.

* PGroonga v2.3.4

It can run in the same way as the official image and the same environment
variables can be used.

## Supported tags and respective Dockerfile links

The tag number is corresponding to PostgreSQL major version.

* `11` [(Dockerfile)](https://github.com/iquiw/docker-pgroonga-on-postgres/blob/11/Dockerfile)
* `10` [(Dockerfile)](https://github.com/iquiw/docker-pgroonga-on-postgres/blob/10/Dockerfile)
