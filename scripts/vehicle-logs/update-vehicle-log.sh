#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/vehicle_logs"

VEHICLE_ID="2"
MILEAGE="777"
GAS_PRICE="2.40"
REPAIR_TYPE="brake change"
TOTAL_PRICE="79.99"
DATE="4-21-2017"
RECEIPT="www.ok.com"

curl "${API}${URL_PATH}/$ID" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "vehicle_log": {
      "vehicle_id": "'"${VEHICLE_ID}"'",
      "mileage": "'"${MILEAGE}"'",
      "gas_price": "'"${GAS_PRICE}"'",
      "repair_type": "'"${REPAIR_TYPE}"'",
      "total_price": "'"${TOTAL_PRICE}"'",
      "date": "'"${DATE}"'",
      "receipt": "'"${RECEIPT}"'"
    }
  }'

echo
