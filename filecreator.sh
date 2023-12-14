#!/bin/bash

last_number=$(ls -1 | grep -Eo '[0-9]+' | sort -n | tail -n 1)
last_number="${last_number:-0}"

for ((i = last_number + 1; i <= last_number + 25; i++)); do
    touch "dmytro$i"
done
