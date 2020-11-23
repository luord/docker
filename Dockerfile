FROM python:slim

RUN adduser --disabled-password app && pip --no-cache-dir install poetry

USER app
ENV HOME=/home/app
ENV PATH=${PATH}:${HOME}/.local/bin

RUN mkdir ${HOME}/default
WORKDIR ${HOME}/default


CMD python3
