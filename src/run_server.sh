#!/bin/bash

# spawn-fcgi -a 127.0.0.1 -p 8080 ./miniserver.out
spawn-fcgi -p 8080 -f ./miniserver.out
nginx -g "daemon off;"