#!/bin/bash

#this code is to count the number of lines in each file in a directory

echo "Enter a directory"

read dir

cd $dir
if [ -d $dir ]; then 
	for i in $dir/*; do
		if [ ! -d $i ]; then 
			wc -l $i
		fi
	done
else 
	exit 0
fi
