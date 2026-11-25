#!/bin/bash

UUID="$(uuidgen)"

logger () {
  while true; do
	  echo "$(date +'%Y-%M-%dT%H:%M:%S.%N'): $UUID";
    sleep 5;
  done
}

logger
