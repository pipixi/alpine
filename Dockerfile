FROM alpine
USER root

#set default timezone to Shanghai
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# add font support
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl coreutils && \
    apt-get clean
RUN apk add --no-cache curl coreutils fontconfig ttf-dejavu
