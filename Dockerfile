FROM debian:testing

ADD script.sh /
RUN /script.sh

CMD python3
