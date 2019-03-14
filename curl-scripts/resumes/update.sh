#!/bin/bash

curl "http://localhost:4741/resumes/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "resume": {
      "name": "'"${NAME}"'",
      "format": "'"${FORMAT}"'",
      "content": "'"${CONTENT}"'"
    }
  }'

echo
