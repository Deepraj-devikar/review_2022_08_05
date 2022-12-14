#!/bin/bash

isPartTime=1
isFullTime=2
totalSalary=0
empRatePerHour=20
numWorkingDays=20

for (( day=1; day<$numWorkingDays; day++ ))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isPartTime)
			empHours=4
		;;
		$isFullTime)
			empHours=8
		;;
		*)
			empHours=0
		;;
	esac
	salary=$(($empHours*$empRatePerHour))
	totalSalary=$(($totalSalary+$salary))
done

echo "Employees wages for month is $totalSalary"
