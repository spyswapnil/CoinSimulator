#! /bin/bash

counthead=0
counttail=0
function coins(){
	coin=$(( RANDOM%2 ))
       	if [ $coin -eq 1 ]
       	then
       	        ((counthead++))
	else
		((counttail++))
        fi
}
while [ $counthead -lt 21 ] && [ $counttail -lt 21 ]
do
        coins
done
echo "Head count:$counthead"
echo "Tail count:$counttail"

if [ $counthead -ge $counttail ]
then
        diff=$(( counthead-counttail ))
        echo "Head wins by $diff"
elif [ $counttail -eq $counthead ]
then
	coins
else
        diff=$(( counttail-counthead ))
        echo "Tail wins by $diff"
fi
