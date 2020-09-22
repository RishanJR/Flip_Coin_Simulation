#!/bin/bash

echo -e "\nWelcome to Flip Coin Simulation"
echo -e "This problem displays the winner, Heads or Tails\n"

#Variable
count=0
hcount=0
tcount=0

echo Enter the number of times you want to check
read n

while [[ $count -lt n ]]
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
	((count++))
done

echo -e "\nNumber of times Heads won is $hcount"
echo Number of times Tails won is $tcount
