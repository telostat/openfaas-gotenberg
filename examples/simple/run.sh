#!/usr/bin/env bash

curl --request POST \
     --url http://localhost:9999/convert/html \
     --header "Content-Type: multipart/form-data" \
     --form files=@index.html \
     --output -
