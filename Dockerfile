FROM node:9-alpine

RUN apk add --update \
    python \
    python-dev \
    py-pip \
