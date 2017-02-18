#!/bin/bash

curl --include --request POST "http://localhost:4741/students" \
  --header "Content-Type: application/json" \
  --data '{
      "obs_num": "'"${OBS_NUM}"'",
      "obs_on": "'"${OBS_ON}"'",
      "obs_setting": "'"${OBS_SETTING}"'",
      "obs_task": "'"${OBS_TASK}"'",
      "obs_time": "'"${OBS_TIME}"'",
      "aet": "'"${AET}"'",
      "pet": "'"${PET}"'"
      "oft_m": "'"${OFT_M}"'"
      "oft_v": "'"${OFT_V}"'"
      "oft_p": "'"${OFT_P}"'"
      "obs_comment": "'"${OBS_COMMENT}"'"
  }'

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/observations"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   # --header "Authorization: Token token=$TOKEN" \
#   --data '{
#     "student": {
#       "first_name": "'"${FIRST_NAME}"'",
#       "last_name": "'"${LAST_NAME}"'",
#       "born_on": "'"${BORN_ON}"'",
#       "school": "'"${SCHOOL}"'",
#       "teacher": "'"${TEACHER}"'",
#       "grade": "'"${GRADE}"'"
#     }
#   }'

echo
