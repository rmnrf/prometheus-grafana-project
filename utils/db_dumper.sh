#!/bin/bash

# Connection and dump settings

CONTAINER_NAME="kanban-postgres"
BACKDIR="../backups"

POSTGRES_DB="kanban"
POSTGRES_USER="kanban"
POSTGRES_PASSWORD="kanban"

docker exec -i $CONTAINER_NAME /bin/bash -c "PGPASSWORD=$POSTGRES_PASSWORD pg_dump --username $POSTGRES_USER $POSTGRES_DB" > $BACKDIR/dump_$(date +%Y-%m-%d_%H_%M_%S).sql
