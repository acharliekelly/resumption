#!/bin/bash

curl --include "http://localhost:4741/resumes/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --request DELETE

echo
