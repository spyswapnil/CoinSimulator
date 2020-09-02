#! /bin/bash

counthead=0
counttail=0
for (( i=0;i<10;i++ ))
do
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 1 ]
	then
		((counthead++))
	else
		((counttail++))
	fi
done
echo "Head count:$counthead"
echo "Tail count:$counttail"
