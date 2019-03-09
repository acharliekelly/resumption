#!/bin/bash

curl "http://localhost:4741/sections/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "section": {
      "sectype_id": '"${TYPE}"'
    }
  }'

echo
