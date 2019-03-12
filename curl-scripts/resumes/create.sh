#!/bin/bash

curl "http://localhost:4741/resumes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "resume": {
      "name": "'"${NAME}"'",
      "format": "'"${FORMAT}"'",
      "content": "'"${CONTENT}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
