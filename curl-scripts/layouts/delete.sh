#!/bin/bash

curl --include "http://localhost:4741/layouts/${ID}" \
  --request DELETE

echo
