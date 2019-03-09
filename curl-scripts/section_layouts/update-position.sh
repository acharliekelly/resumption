#!/bin/bash

curl "http://localhost:4741/section_layouts/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "section_layout": {
      "position": '"${POSITION}"'
    }
  }'

echo
