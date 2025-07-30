FROM debian:latest

WORKDIR /payload
COPY payload /payload

RUN [ "bash", "req-apt", "wget" ]

RUN chmod +x hello.sh

CMD [ "bash", "hello.sh" ]


