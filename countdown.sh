#!/bin/bash
COUNT=1
until [[ $COUNT -gt 5 ]]
do
    echo "Count is: $COUNT"
    COUNT=$((COUNT + 1))
done
