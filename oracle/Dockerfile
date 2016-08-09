FROM centos
RUN yum -y update
RUN yum install -y libaio python-devel gcc
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python get-pip.py
RUN pip install htsql
ENV LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
ADD install_oracle_client.sh /
# ENTRYPOINT ["/install_oracle_client.sh", ";", "ENTRYPOINT ["/usr/bin/htsql-ctl"]
