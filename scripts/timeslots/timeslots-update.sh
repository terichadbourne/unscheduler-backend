#!/bin/bash

curl --include --request PATCH "http://localhost:4741/timeslots/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "timeslot": {
      "start_time": "'"${START}"'",
      "end_time": "'"${END}"'",
      "room_name": "'"${ROOM}"'",
      "event_id": "1"
    }
  }'
