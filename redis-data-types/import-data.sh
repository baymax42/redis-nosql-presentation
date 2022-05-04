#!/bin/env bash

set -e 
set -o pipefail

. ../script-utils.sh

assert_parameter $1
start_containers $1

print_warn "This script does not check if dataset import succeeded."
print_warn "You can check this manually by connecting to Redis and issuing ${NC}KEYS *${ORANGE} command.\n"

print_info "Importing movies dataset into '${1}'..."
docker exec -i $1 redis-cli <./datasets/import_movies.redis &> /dev/null

print_info "Importing actors dataset into '${1}'..."
docker exec -i $1 redis-cli <./datasets/import_actors.redis &> /dev/null

exit 0