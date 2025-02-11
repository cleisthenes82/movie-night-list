#!/bin/bash

if [ $# -eq 2 ]; then
	echo "\"$1\",\"$2\"" >> list.csv
fi
if [ $# -eq 1 ]; then
	echo "\"$(date '+%y%m%d')\",\"$1\"" >> list.csv
fi
