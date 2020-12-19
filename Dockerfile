FROM python:slim

WORKDIR /app

RUN  pip --no-cache-dir install -t . poetry poethepoet nodeenv
RUN python -m nodeenv --force .

FROM python:slim

RUN adduser --disabled-password --gecos "" app

USER app

ENV HOME=/home/app
ENV PATH=${PATH}:${HOME}/.local/bin

COPY --from=0 --chown=app:app /app ${HOME}/.local

WORKDIR ${HOME}/default

CMD bash
