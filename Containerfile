FROM docker.io/library/debian:12

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -qq update
RUN apt-get -qqo Dpkg::Use-Pty=0 satisfy \
    wget diffoscope lintian

COPY Containerfile /
CMD [ "cat", "Containerfile" ]

LABEL org.opencontainers.image.description="This is a custom image."
LABEL org.opencontainers.image.authors="Here we go."
