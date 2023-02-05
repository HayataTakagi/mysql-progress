FROM mysql

ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=progress_test

COPY init_data/* /docker-entrypoint-initdb.d/
