FROM node:13-alpine3.11

RUN echo 'http://mirrors.tuna.tsinghua.edu.cn/alpine/v3.11/main' > /etc/apk/repositories && \
    echo 'http://mirrors.tuna.tsinghua.edu.cn/alpine/v3.11/community' >>/etc/apk/repositories && \
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
