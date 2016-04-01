# htsql-docker
Dockerfiles for HTSQL servers

[Docker](http://docker.io) runs free-standing containers to run processes
without requiring setup on your machine, or contaminating
your machine with unwanted dependencies.

[HTSQL](http://htsql.org) is an API server supporing a
powerful, elegant URL-based query language.

Using
-----

Set the `$DB_URL` environment variable to an HTSQL connection string for
your database.  For example, for a local socket connection where no
password is required,

    export DB_URL="pgsql://:@/mydbname"

Then run the appropriate image with the same arguments you would
use for local `htsql-ctl`.  For a command-line shell,

    docker run -it --rm 18fgsa/htsql-pgsql shell $DB_URL

To run as a webservice,

    docker run -it --rm -p 8080:8080 18fgsa/htsql-pgsql serve $DB_URL

Note that Docker will set an IP address for your container - it
won't be at 127.0.0.1!  http://192.168.99.100:8080 is typical,
but to find the actual IP assigned, use

    docker-machine ip

See the [HTSQL documentation](http://htsql.org/doc/)
for queries to run.
