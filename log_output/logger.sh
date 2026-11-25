#!/bin/bash


uuid_generator () {
  local string
  local uuid
  string="$(tr -dc [:lower:][:digit:] < /dev/urandom | head -c 32)"
  uuid="${string:0:8}-${string:8:4}-${string:12:4}-${string:16:4}-${string:20}"
  echo $uuid
}

UUID="$(uuid_generator)"

logger () {
  while true; do
	  echo "$(date -I'seconds'): $UUID"
    sleep 5;
  done
}

logger
