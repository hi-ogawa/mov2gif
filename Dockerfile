FROM ubuntu:14.04

RUN apt-get update                                && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:mc3man/trusty-media    && \
    apt-get update                                && \
    apt-get -y dist-upgrade                       && \
    apt-get install -y ffmpeg                     && \
    apt-get install -y gifsicle

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
