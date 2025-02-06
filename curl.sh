#!/bin/bash
#
#The TIMES_PER_RUN and TEST_ENDPOINT most be declared upon container creation
#DO NOT RUN IN A PRODUCTION
#FOR TESTING PURPOSES ONLY

DATE_TIME="$(date '+%Y-%m-%d %H:%M:%S')"
DATE_TIME_LOG="$(date '+%Y%m%d-%H%M%S')"

#Started

echo "Starting $DATE_TIME" 

for i in $(seq 1 $TIMES_PER_RUN); do
    STATUS_CODE=$(curl -s -I -o /dev/null -w "%{http_code}" "$TEST_ENDPOINT")
    echo "http_code $STATUS_CODE  $(date '+%Y-%m-%d %H:%M:%S')"
    sleep 1m
done

#Finished
echo "Finished at $(date '+%Y-%m-%d %H:%M:%S')"