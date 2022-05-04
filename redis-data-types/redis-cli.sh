#!/bin/env bash

set -e 
set -o pipefail

. ../script-utils.sh

assert_parameter $1
start_containers $1

print_info "Starting redis-cli in '${1}'..."
print_info "Type ${NC}exit${CYAN} to exit from the redis-cli"
docker exec -it $1 redis-cli

exit 0