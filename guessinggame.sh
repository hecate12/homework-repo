#!/usr/bin/env bash
answ=0
function smth {
	actual=$(ls -l | grep "^-" | wc -l)
}
smth
while [[ $answ -ne $actual ]]
do
	echo "Guess the number of files in the current directory"
	read answ
	if [[ $answ -eq $actual ]]
	then
		echo "You're right"
		break
	elif [[ $answ -gt $actual ]]
	then
		echo "It's greater than answer"
	else
		echo "It's less than answer"
	fi
done
