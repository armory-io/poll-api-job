#!/bin/bash

API_URL=${API_URL:-"http://my.api.url.com"}
# STATUS_FILTER defines the JQ filter used to extract status
STATUS_FILTER=${STATUS_FILTER:-".status"}
# desired status denotes the status we're waiting for
DESIRED_STATUS=${DESIRED_STATUS:-APPROVED}


echo "polling $API_URL until $DESIRED_STATUS is achieved."

while true; do
	response=$(curl -s $API_URL)
	status=$(echo $response | jq -r $STATUS_FILTER)
	if [ "$status" == "$DESIRED_STATUS" ]; then
		echo "ticket is in $DESIRED_STATUS. moving on."
		break
	fi
	echo "ticket is not in $DESIRED_STATUS. continuing to poll."
	sleep 2;
done
