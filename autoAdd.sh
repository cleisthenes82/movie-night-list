#!/bin/bash

if [ $# -eq 2 ]; then
	echo "\"$1\",\"$2\"" >> list.csv
	echo "$1 $2 \\" >> README.md
elif [ $# -eq 1 ]; then
	echo "\"$(date '+%Y%m%d')\",\"$1\"" >> list.csv
	echo "$(date '+%Y%m%d') $1 \\" >> README.md
else
	echo "enter movie name"
	read -r choice
	echo "\"$(date '+%Y%m%d')\",\"$choice\"" >> list.csv
	echo "$(date '+%Y%m%d') $choice \\" >> README.md
fi

