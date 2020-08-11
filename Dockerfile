FROM alpine

RUN adduser -D app && apk --no-cache add python3 python3-dev musl-dev gcc cmd:pip3 && pip3 --no-cache-dir install mypy && apk del --purge python3-dev musl-dev gcc

USER app
ENV HOME=/home/app
ENV PATH=${PATH}:${HOME}/.local/bin

RUN mkdir ${HOME}/default
WORKDIR ${HOME}/default


CMD python3
