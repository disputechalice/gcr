FROM docker.io/library/debian:12

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update
RUN apt-get -qqo Dpkg::Use-Pty=0 satisfy \
    wget

COPY Dockerfile /
CMD [ "cat", "Dockerfile" ]

LABEL org.opencontainers.image.description DESCRIPTION_HERE
LABEL org.opencontainers.image.authors "Here we go."
