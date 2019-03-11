#!/bin/bash

curl --include "http://localhost:4741/resumes/${ID}" \
  --request DELETE

echo
