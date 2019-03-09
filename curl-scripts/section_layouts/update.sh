#!/bin/bash

curl "http://localhost:4741/section_layouts/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "section_layout": {
      "section_id": "'"${SECTION}"'",
      "layout_id": "'"${LAYOUT}"'",
      "position": "'"${POSITION}"'"
    }
  }'

echo
