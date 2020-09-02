#! /bin/bash

counthead=0
counttail=0
while [ $counthead -lt 21 ] && [ $counttail -lt 21 ]
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
if [ $counthead -ge $counttail ]
then
	diff=$(( counthead-counttail ))
	echo "Head wins by $diff"
else
	diff=$(( counttail-counthead ))
	echo "Tail wins by $diff"
fi


