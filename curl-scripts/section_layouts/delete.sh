#!/bin/bash

curl --include "http://localhost:4741/section_layouts/${ID}" \
  --request DELETE

echo
