FROM debian:latest

WORKDIR /payload
COPY . /payload

RUN [ "./req-apt" "wget" ]

RUN chmod +x hello.sh

CMD [ "./hello.sh" ]


