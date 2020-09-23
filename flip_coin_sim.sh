#!/bin/bash -x

echo -e "\nWelcome to Flip Coin Simulation"
echo -e "This problem displays the winner, Heads or Tails\n"

#Variables
hcount=0
tcount=0

#Function to check if it is heads or tails
function check() {

	#Simulating heads or tails using random function
	res=$(( RANDOM%2 ))

	#0 for heads and 1 for tails
	if [[ res -eq 0 ]]
	then
		(($1++))
	else
		(($2++))
	fi
}

#Function to check the difference
function difference() {

	win=$(( $1 - $2 ))

	if [[ $win -lt 0 ]]
	then
		win=$(( $win*(-1) ))
	fi

	echo $win
}

#Main
while [[ $hcount -lt 21 && $tcount -lt 21 ]]
do
	check hcount tcount
done

res=`difference hcount tcount`

#Checking and removing tie condition
while [[ res -lt 2 ]]
do
	check hcount tcount
	res=`difference hcount tcount`
done

#Checking who won and by how much
if [[ $hcount -lt $tcount ]]
then
	diff=$(( $tcount-$hcount ))
	echo Tails won by $diff
else
	diff=$(( $hcount-$tcount ))
	echo Heads won by $diff
fi
