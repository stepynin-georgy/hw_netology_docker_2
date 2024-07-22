#!/bin/bash

docker run --network hw_netology_docker_2_backend --rm --entrypoint "" -v /opt/backup:/backup --link="hw_netology_docker_2-db-1" schnitzler/mysqldump mysqldump --opt -h hw_netology_docker_2-db-1 -u$USER_DB -p$PASS_DB "--result-file=/backup/dump-`date +%Y%m%d'_'%H%M`.sql" --all-databases --no-tablespaces
