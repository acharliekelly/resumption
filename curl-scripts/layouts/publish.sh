#!/bin/bash

curl "http://localhost:4741/layouts/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "layout": {
      "is_public": "true"
    }
  }'

echo
