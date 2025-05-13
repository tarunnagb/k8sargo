FROM mcr.microsoft.com/mssql/server:2019-latest

RUN apt-get update && \
    apt-get install -y curl apt-transport-https gnupg && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install -y mssql-tools unixodbc-dev && \
    echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc && \
    source ~/.bashrc

ENV PATH="$PATH:/opt/mssql-tools/bin"

WORKDIR /app
COPY mssql-runner/init-db.sql /app/init-db.sql

ENTRYPOINT ["sqlcmd"]
