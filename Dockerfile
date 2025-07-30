LABEL org.opencontainers.image.description This is a custom image.

FROM debian:12

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update
RUN apt-get -qqo Dpkg::Use-Pty=0 satisfy \
    wget build-essential

COPY Dockerfile /
CMD [ "cat", "Dockerfile" ]
