FROM alpine:latest

ARG CIANTI_JOURNAL_DIR 
ARG CIANTI_JOURNAL_FILE

RUN apk add --no-cache alpine-sdk bash git libxml2-dev libxslt-dev python3 python3-dev py3-pip vim
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir beancount fava 

RUN mkdir -p ${CIANTI_JOURNAL_DIR}
COPY cianti.bean ${CIANTI_JOURNAL_FILE}

EXPOSE 5000

CMD /usr/bin/fava -d --host 0.0.0.0 ${CIANTI_JOURNAL_FILE} 
