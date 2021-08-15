FROM alpine as build

RUN apk update && apk add bash curl make git py3-pip py3-virtualenv
#ENV VERSION=2021-07-24
RUN git clone -b master https://github.com/PinguinoIDE/pinguino-installers  /tmp/pinguino-installers 
#RUN cd /tmp && cd pinguino-installers/linux && sh  installer-v2.sh
##RUN mkdir /work && cp -rvf /linux/* /work
#ADD ./linux /linux
RUN cp -rvf /tmp/pinguino-installers /work
WORKDIR /linux
VOLUME /linux

CMD sh
