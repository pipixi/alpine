FROM openjdk:8-jre-alpine

USER root

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apk --update add curl bash ttf-dejavu && \
      rm -rf /var/cache/apk/*
