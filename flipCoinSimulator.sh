#!/bin/bash

simulator () {
	die=$(($RANDOM%2))
	echo $die
}

won=$(simulator)
wonArr=( $(simulator) $(simulator) $(simulator) $(simulator) $(simulator) )

headWon=0
tailWon=0
for v in ${wonArr[@]}
do
	if [ $v -eq 0 ]
	then
		headWon=$(($headWon+1))
	else
		tailWon=$(($tailWon+1))
	fi
done
echo "in array head won $headWon times and tail won $tailWon times";

if [ $won -eq 0 ]
then
	echo "head won";
else
	echo "tails won";
fi

