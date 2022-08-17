#!/bin/bash

function calculateWorkingHour() {
	case $1 in
		0)
			workingHour=0;
			;;

		1)
			workingHour=8;
			;;
		2)
			workingHour=4;
			;;
	esac;
	echo $workingHour;
}

perHourSalary=20;
totalWorkingHour=0;
day=1;

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	wHour=$(calculateWorkingHour $((RANDOM%3)));
	totalWorkingHour=$(($totalWorkingHour + $wHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
	salary=$(($perHourSalary * $wHour));
	workingHours[$(($day-1))]=$wHour
	salaries[$(($day-1))]=$salary
	((day++));
done
echo "Employee has earned salaries in a month : ";

echo -e "salary \t working hour"
for (( i=0; i<${#salaries[@]}; i++ ))
do
	echo -e "${salaries[$i]} $ \t ${workingHours[$i]} hr"
done
