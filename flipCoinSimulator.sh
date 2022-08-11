#!/bin/bash

simulator () {
	die=$(($RANDOM%2))
	echo $die
}

won=$(simulator)
if [ $won -eq 0 ]
then
	echo "head won";
else
	echo "tails won";
fi
