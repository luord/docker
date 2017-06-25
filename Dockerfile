FROM debian:testing

ADD script.sh /
RUN /script.sh

RUN useradd --create-home --user-group --shell /bin/false app

WORKDIR /home/app

USER app

ENV LANG C.UTF-8

CMD python3
