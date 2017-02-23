#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/settings/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "setting": {
      "obs_on": "'"${OBS_ON}"'",
      "obs_setting": "'"${OBS_SETTING}"'",
      "obs_task": "'"${OBS_TASK}"'",
      "obs_time": "'"${OBS_TIME}"'",
  }'

echo
