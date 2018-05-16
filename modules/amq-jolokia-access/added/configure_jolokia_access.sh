#!/bin/sh
set -e

export FILE_NAME=$1

#Remove the server side origin check

sed -i 's/<allow-origin>.*<\/allow-origin>/<allow-origin><\/allow-origin>/g' $FILE_NAME
sed -i 's/<strict-checking\/>//g' $FILE_NAME