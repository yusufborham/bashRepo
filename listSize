#!/bin/bash

files=0 
dir="dir"
lines=0
linesN="10" 
while getopts "a:n:" opt ; 
do 
case $opt in 
	a) 
	files=1
	dir="$OPTARG";;
	n)
	lines=1
	linesN="$OPTARG";;
 esac
done
if [ $files -eq 0 ]
then 
	dir="$1"
fi
if [ -d $dir ] 
then

	if [ $files -eq 1 ]
	then 
		du -ah $dir | sort -rh > sizeFile.txt 
       	        head -n $linesN sizeFile.txt
       	        rm sizeFile.txt
	fi

	if [ $files -eq 0 ]
        then 
                du -h $dir | sort -rh > sizeFile.txt 
                head -n $linesN sizeFile.txt
                rm sizeFile.txt
        fi

else 
	echo "no such directory"
fi

