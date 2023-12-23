#!/bin/bash

trap 'echo "Ctrl+C pressed. Exiting." && exit' INT

echo "Enter the subnet"
read -r SUBNET

for IP in $(seq 100 254); do
    CURRENT_IP="$SUBNET.$IP"
    if ping -c 1 "$CURRENT_IP" &> /dev/null; then
        echo "Host $CURRENT_IP is reachable"
    else
        echo "Host $CURRENT_IP is unreachable"
    fi
done

