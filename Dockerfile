FROM node:10-alpine

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    ca-certificates \
    openssl \
    && update-ca-certificates
