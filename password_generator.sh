#!/bin/bash

# Simple password generator

echo "This is a simple password generator "
echo "Enter the length of the password you want to generate"
read PASS_LEN

for p in $(seq 1 5);do
	openssl rand -base64 48 | cut -c1-$PASS_LEN
done

