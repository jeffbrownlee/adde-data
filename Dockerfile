FROM mysql:9.1

ADD schema.sql /docker-entrypoint-initdb.d/1-schema.sql
ADD data.sql /docker-entrypoint-initdb.d/2-data.sql
