#!/usr/bin/env zsh

## Script retrieves SSL certs for a url and sends them to stdout.
## First argument is the url and is mandatory
## Second argument is the port.  It is optional.  If a port is not supplied, port 443 is used.

if [[ -z "$1" ]]; then
 echo "Please enter url"
 exit 1
fi

URL="$1"

if [[ -z "$2" ]]; then
 PORT="443"
else
 PORT="$2"
fi


openssl s_client -showcerts -connect $URL:$PORT </dev/null
