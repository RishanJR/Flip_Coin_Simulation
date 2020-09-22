#!/bin/bash

echo -e "\nWelcome to Flip Coin Simulation"
echo -e "This problem displays the winner, Heads or Tails\n"

#Variables
hcount=0
tcount=0

#Checking if it is heads or tails
while [[ $hcount -lt 21 && $tcount -lt 21 ]]
do
	#Simulating heads or tails using random function
	res=$(( RANDOM%2 ))

	#0 for heads and 1 for tails
	if [[ res -eq 0 ]]
	then
		((hcount++))
	else
		((tcount++))
	fi
done

#Checking who won and by how much
if [[ hcount -lt tcount ]]
then
	diff=$(( $tcount-$hcount ))
	echo Tails won by $diff
else
	diff=$(( $hcount-$tcount ))
	echo Heads won by $diff
fi
