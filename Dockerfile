FROM node:17-alpine3.15

RUN apk add --update --no-cache \
    bash \
    openssh-client \
    wget \
    curl \
    openssl \
    libcurl \
    git \
    python2 \
    python2-dev \
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

RUN npm i --global cross-env mirror-config-china --unsafe-perm=true --allow-root
