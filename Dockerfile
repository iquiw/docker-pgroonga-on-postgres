FROM postgres:9.6

RUN apt-get update && \
    apt-get install -y apt-transport-https gcc make postgresql-server-dev-9.6 wget

COPY groonga.list /etc/apt/sources.list.d/

RUN apt-get update && \
    apt-get install -y --allow-unauthenticated groonga-keyring && \
    apt-get update && \
    apt-get install -y --no-install-recommends libgroonga-dev

ENV PGROONGA_VERSION=1.2.0

RUN cd /usr/src && \
    wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONGA_VERSION}.tar.gz && \
    tar xzf pgroonga-${PGROONGA_VERSION}.tar.gz && \
    cd pgroonga-${PGROONGA_VERSION} && \
    make install

RUN rm -rf /usr/src/* /var/lib/apt/lists/*
