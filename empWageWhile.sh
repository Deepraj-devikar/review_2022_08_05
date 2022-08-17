#!/bin/bash

perHourSalary=20;
totalSalary=0;
totalWorkingHour=0;
day=1;

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	isPresent=$((RANDOM%3))
	case $isPresent in
		0)
			wHour=0
		;;
		1)
			wHour=8
		;;
		2)
			wHour=4
		;;
	esac
	totalWorkingHour=$(($totalWorkingHour + $wHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
	salary=$(($perHourSalary * $wHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";
