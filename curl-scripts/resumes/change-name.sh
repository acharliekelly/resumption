curl "http://localhost:4741/resumes/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "resume": {
      "name": "'"${NAME}"'"
    }
  }'

echo
