#!/bin/bash

curl "http://localhost:4741/templates" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "template": {
      "name": "'"${NAME}"'",
      "author": "'"${AUTHOR}"'",
      "author_url": "'"${URL}"'",
      "content": "'"${CONTENT}"'"
    }
  }'

echo
