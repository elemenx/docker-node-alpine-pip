FROM node:14-alpine3.12

RUN apk add --update --no-cache \
    bash \
    openssh-client \
    wget \
    curl \
    openssl \
    libcurl \
    git \
    python3 \
    python3-dev \
    py-pip \
    augeas-dev \
    libressl-dev \
    ca-certificates \
    dialog \
    autoconf \
    make \
    g++ \
    gcc \
    zlib \
    tzdata \
    musl-dev \
    linux-headers \
    libmcrypt-dev \
    libpng-dev \
    icu-dev \
    libpq \
    libxslt-dev \
    libffi-dev \
    freetype-dev \
    sqlite-dev \
    libjpeg-turbo-dev

# set China timezone
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone

USER root

RUN npm i --global cross-env node-sass
