FROM debian:latest

WORKDIR /payload
COPY payload /payload

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update
RUN apt-get -qqo Dpkg::Use-Pty=0 satisfy "$@"

CMD [ "bash", "hello.sh" ]


