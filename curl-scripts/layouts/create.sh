#!/bin/bash

curl "http://localhost:4741/layouts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "layout": {
      "layout_name": "'"${NAME}"'",
      "template_id": "'"${TEMPLATE}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
