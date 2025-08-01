FROM docker.io/library/debian:12

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update
RUN apt-get -qqo Dpkg::Use-Pty=0 satisfy \
    wget

COPY Dockerfile /
CMD [ "cat", "Dockerfile" ]

