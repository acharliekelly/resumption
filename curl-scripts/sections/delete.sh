#!/bin/bash

curl --include "http://localhost:4741/sections/${ID}" \
  --request DELETE

echo
