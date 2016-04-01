FROM alpine
RUN apk update
RUN apk add postgresql-client postgresql-dev python-dev py-pip gcc musl-dev
RUN pip install --upgrade pip
RUN pip install htsql-pgsql
EXPOSE 8080
ENTRYPOINT ["/usr/bin/htsql-ctl"]
