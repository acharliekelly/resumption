#!/bin/bash

curl "http://localhost:4741/layouts/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "layout": {
      "name": "'"${NAME}"'",
      "template_id": "'"${TEMPLATE}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
