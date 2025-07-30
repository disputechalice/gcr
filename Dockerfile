FROM debian:latest

WORKDIR /payload
COPY payload /payload

RUN [ "req-apt", "wget" ]

CMD [ "bash", "hello.sh" ]


