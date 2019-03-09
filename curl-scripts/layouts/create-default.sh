#!/bin/bash

# default user
curl "http://localhost:4741/layouts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "layout": {
      "name": "'"${NAME}"'",
      "template_id": "'"${TEMPLATE}"'",
      "user_id": "1"
    }
  }'

echo
