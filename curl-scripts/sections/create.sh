#!/bin/bash

curl "http://localhost:4741/sections" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "section": {
      "name": "'"${NAME}"'",
      "type_id": "'"${TYPEID}"'",
      "content": "'"${CONTENT}"'"
    }
  }'

echo
