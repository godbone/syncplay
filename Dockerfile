FROM python:3-alpine

RUN apk add libffi-dev
RUN apk add openssl-dev
RUN apk add gcc
RUN apk add musl-dev

RUN pip install twisted
RUN pip install certifi
RUN pip install pyOpenSSL
RUN pip install service_identity
RUN pip install idna

COPY . /syncplay

EXPOSE 8999
WORKDIR /syncplay
ENTRYPOINT ["/syncplay/syncplayServer.py"]
