#!/usr/bin/bash
echo "enter a number"
read number  
if [ $(expr $number % 2) -eq 0 ]
then 
	echo "number is even"
else 
	echo "number is odd" 
fi 
