#!/bin/bash

echo -e "\nWelcome to Flip Coin Simulation"
echo -e "This problem displays the winner, Heads or Tails\n"

#Simulating heads or tails using random function
res=$(( RANDOM%2 ))

#0 for heads and 1 for tails
if [[ res -eq 0 ]]
then
	echo Heads won
else
	echo Tails won
fi

