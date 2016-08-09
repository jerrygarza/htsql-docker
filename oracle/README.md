First, download RPMs for the Oracle
Instant Client Package - SDK and
Instant Client Package - Basic
from http://www.oracle.com/technetwork/index.html.
Create a directory, "oracle_client", and copy the RPMs into it.

Then,

    export DB_URL=oracle://<username>:<password>@<servername>/<service_name>
    docker run -it --rm -p 8080:8080 -v `pwd`/oracle_client:/oracle_client 18fgsa/htsql-oracle serve $DB_URL
