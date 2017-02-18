#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/students/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  # --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "student": {
      "first_name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'"
      "born_on": "'"${BORN_ON}"'"
      "school": "'"${SCHOOL}"'"
      "teacher": "'"${TEACHER}"'"
      "grade": "'"${GRADE}"'"
    }
  }'

echo
