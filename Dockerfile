FROM python:slim

RUN  pip --no-cache-dir install --user poetry poethepoet nodeenv
RUN python -m nodeenv --force -c /root/.local

FROM python:slim

RUN adduser --disabled-password --gecos "" dock

USER dock

ENV HOME=/home/dock
ENV PATH=${PATH}:${HOME}/.local/bin

COPY --from=0 --chown=dock:dock /root/.local ${HOME}/.local

WORKDIR ${HOME}/app

CMD bash
