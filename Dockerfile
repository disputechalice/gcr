FROM debian:latest

WORKDIR /payload
COPY . /payload

RUN [ "bash", "./req-apt", "wget" ]

RUN chmod +x hello.sh

CMD [ "./hello.sh" ]


