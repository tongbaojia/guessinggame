#!/usr/bin/env bash
# File: guessinggame.sh

# get number of files as int
nfiles=$(ls -a | wc -l | egrep -o "[0-9]+")

function compare_value {
	if [[ $response < $nfiles ]]
		then
			echo "Guess LARGER than $response, then press Enter again"
		else
			echo "Guess SMALLER than $response, then press Enter again"
	fi
}

# main program
echo "Type in a number and then press Enter:"
# get input response
read response
while [[ $response != $nfiles ]]
do
	compare_value $response $nfiles
	read response
done

echo "You get the correct number, $nfiles! Congratulations."