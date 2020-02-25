#!/bin/bash
for i in {0..300..10}
do
echo "Welcome $i times"
JSON_FMT='{"did":"%s","accel" :{"x":"%d","y":"%d","z":"%d"}}\n'
json_string=$(printf "$JSON_FMT" "beta" $i $i 2)
echo "$json_string"
echo "$json_string" | fluent-cat redis.vishnu1

done