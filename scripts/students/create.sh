#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/students"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  # --header "Authorization: Token token=$TOKEN" \
  --data '{
    "student": {
      "first_name": "henry"
      "last_name": "Pollack"
      "born_on": "5/15/2015"
      "school": "WashU"
      "teacher": "Mr. Whatever"
      "grade": "4"
    }
  }'

echo
