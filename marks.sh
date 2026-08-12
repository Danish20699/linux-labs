#!/bin/bash

read -p "Enter your marks: " USERMARKS

if [[ $USERMARKS -ge 85 ]]; then
    echo "You have high level marks"
elif [[ $USERMARKS -ge 50 ]]; then
    echo "You have mid-level marks"
elif [[ $USERMARKS -ge 33 ]]; then
    echo "You have low level marks"
else
    echo "You have failed the exam"
fi
