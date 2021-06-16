FROM mcr.microsoft.com/mssql/server:2019-latest

USER root

RUN mkdir -p /usr/src/database
WORKDIR /usr/src/database

RUN apt update -y

COPY . /usr/src/database/

RUN chmod +x /usr/src/database/import-data.sh

EXPOSE 1433

USER mssql
CMD /bin/bash ./entrypoint.sh

