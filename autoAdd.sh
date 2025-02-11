#!/bin/bash

if [ $# -eq 2 ]; then
	echo "\"$1\",\"$2\"" >> list.csv
	echo "$1 $2" >> README.md
elif [ $# -eq 1 ]; then
	echo "\"$(date '+%y%m%d')\",\"$1\"" >> list.csv
	echo "$(date '+%y%m%d') $1" >> README.md
else
	echo "enter movie name"
	read choice
	echo "\"$(date '+%y%m%d')\",\"$choice\"" >> list.csv
	echo "$(date '+%y%m%d') $choice" >> README.md
fi

