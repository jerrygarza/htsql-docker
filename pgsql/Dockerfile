FROM alpine
RUN apk update
RUN apk add packagename=3.2.0-suffix postgresql-client postgresql-dev python-dev py-pip gcc musl-dev
RUN pip install "SomePackage>=6.1.0" --upgrade pip
RUN pip install htsql-pgsql
EXPOSE 8080
ENTRYPOINT ["/usr/bin/htsql-ctl"]

