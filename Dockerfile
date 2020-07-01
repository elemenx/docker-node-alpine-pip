FROM node:14-alpine3.12

RUN echo 'http://mirrors.bfsu.edu.cn/alpine/v3.12/main' > /etc/apk/repositories && \
    echo 'http://mirrors.bfsu.edu.cn/alpine/v3.12/community' >>/etc/apk/repositories && \
    apk update && apk upgrade && \
    apk --no-cache add \
    git \
    python \
    python-dev \
    py-pip \
    ca-certificates \
    openssl && \
    update-ca-certificates && \
    pip install --upgrade pip
