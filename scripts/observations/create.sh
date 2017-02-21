
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/students/${STUDENT_ID}/observations"
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
    --data '{
      "observation": {
        "obs_num": "'"${OBS_NUM}"'",
        "obs_on": "'"${OBS_ON}"'",
        "obs_setting": "'"${OBS_SETTING}"'",
        "obs_task": "'"${OBS_TASK}"'",
        "obs_time": "'"${OBS_TIME}"'",
        "aet": "'"${AET}"'",
        "pet": "'"${PET}"'",
        "oft_m": "'"${OFT_M}"'",
        "oft_v": "'"${OFT_V}"'",
        "oft_p": "'"${OFT_P}"'",
        "obs_comment": "'"${OBS_COMMENT}"'"
      }
    }'

echo
