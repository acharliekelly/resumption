#!/bin/bash

curl "http://localhost:4741/sections" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "section": {
      "name": "'"${NAME}"'",
      "sectype_id": "'"${TYPE}"'",
      "content": "'"${CONTENT}"'",
      "user_id": "1"
    }
  }'

echo
