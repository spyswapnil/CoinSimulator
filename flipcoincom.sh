#! /bin/bash

coin=$(( RANDOM%2 ))

if [ $coin -eq 1 ]
then
	echo Head
else
	echo Tail
fi
