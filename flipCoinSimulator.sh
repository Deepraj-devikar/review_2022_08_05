#!/bin/bash

simulator () {
	die=$(($RANDOM%2))
	echo $die
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
	echo "it is tie";
fi

#checking uc4
