FROM python:slim

RUN  pip --no-cache-dir install --user poetry poethepoet nodeenv
RUN python -m nodeenv --force /root/.local

FROM python:slim

RUN adduser --disabled-password --gecos "" app

USER app

ENV HOME=/home/app
ENV PATH=${PATH}:${HOME}/.local/bin

COPY --from=0 --chown=app:app /root/.local ${HOME}/.local

WORKDIR ${HOME}/default

CMD bash
