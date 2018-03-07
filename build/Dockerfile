FROM microsoft/mssql-server-linux:latest

RUN mkdir -p /usr/src/default-db
WORKDIR /usr/src/app

# Create working directory for scripts
RUN mkdir -p /usr/src/default-db
WORKDIR /usr/src/default-db

# Copy scripts to container
COPY . /usr/src/default-db

# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/src/default-db/import-data.sh

CMD /bin/bash ./entrypoint.sh
