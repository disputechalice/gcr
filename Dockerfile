FROM debian:latest

WORKDIR /payload
COPY payload /payload

RUN [ "bash", "req-apt", "wget" ]

CMD [ "bash", "hello.sh" ]


