FROM alpine:3.12.0
RUN apk update
RUN apk add switch postgresql-client postgresql-dev python-dev py-pip gcc musl-dev
RUN pip install
RUN pip install --upgrade pip
RUN pip install htsql-pgsql
EXPOSE 8080
ENTRYPOINT ["/usr/bin/htsql-ctl"]

