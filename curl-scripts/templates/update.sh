#!/bin/bash

curl "http://localhost:4741/templates/${ID}" \
  --include \
  --request PATCH \
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
