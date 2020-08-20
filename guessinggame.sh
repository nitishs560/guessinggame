#!/usr/bin/env bash
# File: guessinggaming.sh
# Peer Graded Assignment(Coursera) for JHU's The Unix Workbench

count=$(ls -1 | wc -l)


function correct_guess {	#Function
	if [[ $1 -lt $2 ]]	#if statement
	then
		echo "Too Low"
	elif [[ $1 -gt $2 ]]
	then
		echo "Too High"
	else
		echo "Congratulations! You guessed right!"
	fi
}


while [[ $count -ne $guess ]]	#Loop
do
	echo "Guess how many files are there in current directory ?"
	read guess
	correct_guess $guess $count
	echo ""
done
