FROM debian:latest
COPY . /payload
WORKDIR /payload
CMD hello.sh


