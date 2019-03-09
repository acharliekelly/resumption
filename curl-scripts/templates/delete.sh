#!/bin/bash

curl --include "http://localhost:4741/templates/${ID}" \
  --request DELETE

echo
