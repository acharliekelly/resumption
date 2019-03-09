#!/bin/bash

curl "http://localhost:4741/templates/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "template": {
      "content": "'"${CONTENT}"'"
    }
  }'

echo
