FROM mcr.microsoft.com/mssql-tools

WORKDIR /app

COPY ../mssql-runner/init-db.sql /app/init-db.sql

ENTRYPOINT ["sqlcmd"]
