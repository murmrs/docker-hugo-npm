FROM alpine:3.6
MAINTAINER Steven Kreschollek <steven.kreschollek@gmail.com>

ARG HUGO_VER=0.34
ARG HUGO_SHA=b9aa1d54e83daa1f77c0794110d2d96064bc07431337742fec903f65f0606e6e
ARG HUGO_URL=https://github.com/gohugoio/hugo/releases/tag/
ARG HUGO_TGZ=hugo_${HUGO_VER}_Linux-64bit.tar.gz

RUN apk update && apk upgrade
RUN apk add --update --no-cache \
    bash \
    ca-certificates \
    curl \
    git \
    openssh-client \
    nodejs \
    nodejs-npm \
    python \
    py-pip

RUN pip install --upgrade pip
RUN pip install Pygments

RUN curl -Ls ${HUGO_URL}/v${HUGO_VER}/${HUGO_TGZ} -o /tmp/hugo.tar.gz \
    && echo "${HUGO_SHA}  /tmp/hugo.tar.gz" | sha256sum -c - \
    && tar xf /tmp/hugo.tar.gz -C /tmp \
    && mv /tmp/hugo /usr/bin/hugo \
    && rm -rf /tmp/hugo* 

