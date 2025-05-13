FROM mcr.microsoft.com/mssql/server:2019-latest

# Install required packages and Microsoft SQL tools
RUN apt-get update && \
    apt-get install -y curl apt-transport-https gnupg2 && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list -o /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install -y mssql-tools unixodbc-dev && \
    ln -sfn /opt/mssql-tools/bin/sqlcmd /usr/bin/sqlcmd && \
    ln -sfn /opt/mssql-tools/bin/bcp /usr/bin/bcp && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add sqlcmd to PATH (optional, since we already symlinked)
ENV PATH="$PATH:/opt/mssql-tools/bin"

# Set working directory
WORKDIR /app

# Copy SQL script into the container
COPY mssql-runner/init-db.sql /app/init-db.sql

# Default command when container runs
ENTRYPOINT ["sqlcmd"]
