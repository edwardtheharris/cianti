FROM alpine:latest
ENV CIANTI_JOURNAL_FILE /srv/fava/cianti.bean
RUN mkdir -p /srv/fava
COPY cianti.bean /srv/fava/cianti.bean
RUN apk add --no-cache alpine-sdk bash git libxml2-dev libxslt-dev python3 python3-dev py3-pip vim
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir beancount fava 
EXPOSE 5000
CMD /usr/bin/fava --host 0.0.0.0 ${CIANTI_JOURNAL_FILE} 
