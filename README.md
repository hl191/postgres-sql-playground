# Playground for SQL on postgres

Local port available will be 65432, inside the container the postgres port is 5432 (default)

    ports:
      - '65432:5432'

SQL scripts in `/docker-entrypoint-initdb.d` will be loaded on startup. So we can copy initial setup scripts there.

# Usage 

Start the database with compose
```bash
docker-compose up
```

Spawn an interactive shell inside the container
```bash
docker exec -it playground-postgres bash
```

Connect to the database from inside the container
```bash
psql -U postgres database
```

#PSQL

https://www.geeksforgeeks.org/postgresql-psql-commands/

Show tables 
```bash
\dt
```

Show views
```bash
\dt
```

Show users
```bash
\du
```

Describe table
```bash
\d table_name
```