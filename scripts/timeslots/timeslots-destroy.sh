#!/bin/bash

curl --include --request DELETE "http://localhost:4741/timeslots/${ID}" \
--header "Authorization: Token token=${TOKEN}" \
