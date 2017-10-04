#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/vehicles"

USER_ID="2"
MAKE="ford"
MODEL="focus"
YEAR="2011"
MILEAGE="777"

curl "${API}${URL_PATH}/$ID" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "vehicle": {
      "user_id": "'"${USER_ID}"'",
      "make": "'"${MAKE}"'",
      "model": "'"${MODEL}"'",
      "year": "'"${YEAR}"'",
      "mileage": "'"${MILEAGE}"'"
    }
  }'

echo
