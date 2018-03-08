#start SQL Server, start the script to create the DB

/opt/mssql/bin/sqlservr & /usr/src/default-db/import-data.sh && tail -f /etc/hosts