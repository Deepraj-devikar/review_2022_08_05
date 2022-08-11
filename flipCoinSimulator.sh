#!/bin/bash

simulator () {
	die=$(($RANDOM%2))
	echo $die
}

level2 () {
	headWon=0
	tailWon=0
	while [ 1 -eq 1 ]
	do
		if [ $(simulator) -eq 0 ]
		then
			headWon=$(($headWon+1))
		else
			tailWon=$(($tailWon+1))
		fi
		
		if [ $(($headWon-$tailWon)) -ge 2 ]
		then
			echo "head Won";
			break
		elif [ $(($tailWon-$headWon)) -ge 2 ]
		then
			echo "tail Won";
			break
		fi
	done
}

i=0

#counters for head and tails won
headWon=0
tailWon=0

# loop will run upto 42 time
while [ $i -lt 42 ]
do
	if [ $(simulator) -eq 0 ]
	then
		headWon=$(($headWon+1))
	else
		tailWon=$(($tailWon+1))
	fi
	i=$(($i+1))
done

if [ $headWon -gt 21 ]
then
	points=$(($headWon-$tailWon))
	echo "head won by $points points";
elif [ $tailWon -gt 21 ]
then
	points=$(($tailWon-$headWon))
	echo "tail won by $points points";
else
	echo "it is tie -> $(level2) in level 2";
fi

