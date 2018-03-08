#wait for the SQL Server to come up
echo "Waiting $TIMEOUT seconds for the database to spin up"
sleep $TIMEOUT

#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d master -i import-data.sql