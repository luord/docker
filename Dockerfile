FROM debian:testing

ADD script.sh /
RUN /script.sh

RUN useradd --create-home --user-group --shell /bin/false app

USER app
ENV LANG=C.UTF-8 WD=/home/app
ENV PATH=${PATH}:${WD}/.local/bin
WORKDIR ${WD}


CMD python3
