#!/bin/bash

simulator () {
	die=$(($RANDOM%2))
	echo $die
}

won=$(simulator)
echo $won
