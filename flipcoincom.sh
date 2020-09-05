#! /bin/bash

counthead=0
counttail=0
firsthead=0
firsttail=0
declare -A doublet
for (( i=0;i<10;i++ ))
do
        coin=$(( RANDOM%2 ))
	coin1=$(( RANDOM%2 ))
        if [ $coin -eq 1 ] && [ $coin1 -eq 1 ]
        then
                ((counthead++))
	elif [ $coin -eq 1 ] && [ $coin1 -eq 0 ]
	then
		((firsthead++))
	elif [ $coin -eq 0 ] && [ $coin1 -eq 1 ]
	then
		((firsttail++))
	else
                ((counttail++))
        fi
done
echo "Both Head count:$counthead"
echo "Both Tail count:$counttail"
echo "Head Tail count:$firsthead"
echo "Tail Head count:$firsttail"


doublet[HH]=$counthead
doublet[TT]=$counttail
doublet[HT]=$firsthead
doublet[TH]=$firsttail
total=$(( counthead+counttail+firsthead+firsttail ))
percentofhead=$(( counthead*100/total ))
percentoftail=$(( counttail*100/total ))
percentofonehead=$(( firsthead*100/total ))
percentofonetail=$(( firsttail*100/total ))

echo "Both Head Percentage $percentofhead"
echo "Both Tail Percentage $percentoftail"
echo "Head Tail Percentage $percentofonehead"
echo "Tail Head Percentage $percentofonetail"
echo ${!doublet[@]}
echo ${doublet[@]}
