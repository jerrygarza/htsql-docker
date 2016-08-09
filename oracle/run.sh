docker run -it --rm -p 8080:8080 -v `pwd`/oracle_client:/oracle_client 18fgsa/htsql-oracle serve $DB_URL
