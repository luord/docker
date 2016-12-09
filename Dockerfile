FROM debian:testing

ADD script.sh /
RUN /script.sh

ENV LANG C.UTF-8

CMD python3
