#! /bin/bash

counthead=0
counttail=0
hth=0
hht=0
htt=0
tht=0
tth=0
thh=0
declare -A triplet
for (( i=0;i<100;i++ ))
do
        coin=$(( RANDOM%2 ))
        coin1=$(( RANDOM%2 ))
	coin2=$(( RANDOM%2 ))
        if [ $coin -eq 1 ] && [ $coin1 -eq 1 ] && [ $coin2 -eq 1 ]
        then
                ((counthead++))
        elif [ $coin -eq 1 ] && [ $coin1 -eq 1 ] && [ $coin2 -eq 0 ]
        then
                ((hht++))
        elif [ $coin -eq 1 ] && [ $coin1 -eq 0 ] && [ $coin2 -eq 1 ]
        then
                ((hth++))
        elif [ $coin -eq 1 ] && [ $coin1 -eq 0 ] && [ $coin2 -eq 0 ]
        then
                ((htt++))
	elif [ $coin -eq 0 ] && [ $coin1 -eq 1 ] && [ $coin2 -eq 1 ]
        then
                ((thh++))
        elif [ $coin -eq 0 ] && [ $coin1 -eq 1 ] && [ $coin2 -eq 0 ]
        then
                ((tht++))
        elif [ $coin -eq 0 ] && [ $coin1 -eq 0 ] && [ $coin2 -eq 1 ]
        then
                ((tth++))
      	else
                ((counttail++))
        fi
done
echo "Both Head count:$counthead"
echo "Both Tail count:$counttail"
echo "HHT count:$hht"
echo "THT count:$tht"
echo "HTH count:$hth"
echo "TTH count:$tth"
echo "HTT count:$htt"
echo "THH count:$thh"



triplet[HHH]=$counthead
triplet[TTT]=$counttail
triplet[HTT]=$htt
triplet[THT]=$tht
triplet[TTH]=$tth
triplet[HTH]=$hth
triplet[HHT]=$hht
triplet[THH]=$thh
total=$(( counthead+counttail+htt+tht+tth+hth+hht+thh ))
percentofhead=$(( counthead*100/total ))
percentoftail=$(( counttail*100/total ))
percentofhtt=$(( htt*100/total ))
percentoftht=$(( tht*100/total ))
percentoftth=$(( tth*100/total ))
percentofhth=$(( hth*100/total ))
percentofhht=$(( hht*100/total ))
percentofthh=$(( thh*100/total ))

echo "Both Head Percentage $percentofhead"
echo "Both Tail Percentage $percentoftail"
echo "HHT Percentage $percentofhht"
echo "THT Percentage $percentoftht"
echo "HTH Percentage $percentofhth"
echo "TTH Percentage $percentoftth"
echo "HTT Percentage $percentofhtt"
echo "THH Percentage $percentofthh"
echo ${!triplet[@]}
echo ${triplet[@]}




