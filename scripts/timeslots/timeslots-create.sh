#!/bin/bash

curl --include --request POST "http://localhost:4741/timeslots/" \
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
