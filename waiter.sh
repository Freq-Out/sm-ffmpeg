#!/bin/bash

set -e

test_cmd="$1"
shift
cmd="$@"

until $test_cmd ; do
  >&2 echo "Service is unavailable - sleeping"
  sleep 1
done

>&2 echo "Service is up - executing command"
exec $cmd
