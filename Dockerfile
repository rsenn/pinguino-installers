FROM python:3.7-slim as build

ENV LANG=C LC_ALL=C LANGUAGE=C TERM=rxvt LOCALE=C

RUN apt-get update
RUN apt-get install -y bash vim-nox curl make git python3-venv python3-pip
RUN pip install pipenv

RUN git clone -b master https://github.com/PinguinoIDE/pinguino-installers  /tmp/pinguino-installers
RUN mkdir -p /work && mv -f /tmp/pinguino-installers/* /work/
WORKDIR /work/linux
VOLUME /work

CMD bash --login
