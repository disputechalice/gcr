FROM debian:latest

WORKDIR /
COPY Dockerfile /

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update
RUN apt-get -qqo Dpkg::Use-Pty=0 satisfy \
    wget build-essential

CMD [ "cat", "Dockerfile" ]


