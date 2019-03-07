#
# Dockerfile for overture
#

FROM alpine

ARG OVERTURE_VER=v1.5-rc6
ARG OVERTURE_URL=https://github.com/shawn1m/overture/releases/download/$OVERTURE_VER/overture-linux-amd64.zip

RUN set -ex && \
    cd /tmp && \
    wget $OVERTURE_URL && \
    unzip overture-linux-amd64.zip && \
    mv overture-linux-amd64 /usr/local/bin/overture && \
    rm -rf /tmp/*

#USER nobody
