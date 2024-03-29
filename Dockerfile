FROM postgres:14

ENV PGROONGA_VERSION=2.3.6

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y apt-transport-https gcc make postgresql-server-dev-${PG_MAJOR} wget && \
    wget https://packages.groonga.org/debian/groonga-apt-source-latest-bullseye.deb && \
    apt install -y --no-install-recommends ./groonga-apt-source-latest-bullseye.deb && \
    rm -f groonga-apt-source-latest-bullseye.deb && \
    apt-get update && \
    apt-get install -y --no-install-recommends libgroonga-dev groonga-tokenizer-mecab && \
    \
    cd /usr/src && \
    wget https://packages.groonga.org/source/pgroonga/pgroonga-${PGROONGA_VERSION}.tar.gz && \
    tar xzf pgroonga-${PGROONGA_VERSION}.tar.gz && \
    \
    cd pgroonga-${PGROONGA_VERSION} && \
    make install && \
    apt-get purge -y --auto-remove gcc make postgresql-server-dev-${PG_MAJOR} wget && \
    rm -rf /usr/src/* /var/lib/apt/lists/*
