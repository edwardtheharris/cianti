FROM alpine:latest
RUN apk add --no-cache alpine-sdk bash git libxml2-dev libxslt-dev python3 py3-pip vim
RUN pip install --no-cache-dir beancount fava 
