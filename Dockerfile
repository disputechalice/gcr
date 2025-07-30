FROM debian:latest

WORKDIR /payload
COPY . /payload
RUN chmod +x hello.sh

CMD [ "./hello.sh" ]


