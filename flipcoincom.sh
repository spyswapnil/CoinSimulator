#! /bin/bash

counthead=0
counttail=0
declare -A singlet
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

singlet[Head]=$counthead
singlet[Tail]=$counttail
total=$(( counthead+counttail ))
percentofhead=$(( counthead*100/total ))
percentoftail=$(( counttail*100/total ))

echo "Head Percentage $percentofhead"
echo "Tail Percentage $percentoftail"
echo ${!singlet[@]}
echo ${singlet[@]}
