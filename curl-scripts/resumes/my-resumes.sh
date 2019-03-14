#!/bin/bash

curl "http://localhost:4741/resumes" \
  --include \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --request GET

echo
