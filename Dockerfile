FROM debian:testing

ADD script.sh /
RUN /script.sh

RUN useradd --create-home --user-group --shell /bin/false app

USER app
ENV LANG=C.UTF-8 HOME=/home/app
ENV PATH=${PATH}:${HOME}/.local/bin

RUN mkdir ${HOME}/default
WORKDIR ${HOME}/default


CMD python3
