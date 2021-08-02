FROM postgres:13.3
ADD sql/create_tables.sql /docker-entrypoint-initdb.d
ADD sql/setup_initial_data.sql /docker-entrypoint-initdb.d
RUN chmod a+r /docker-entrypoint-initdb.d/*