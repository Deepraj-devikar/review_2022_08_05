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
totalSalary=0

declare -A dailySalaries
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
	totalSalary=$(($totalSalary+$salary))
	dailySalaries["day $day"]="$salary \t $totalSalary"
	((day++));
done
echo "Employee has earned salaries in a month : ";

echo -e "day \t salary \t total salary"

##Approch 2 to print
for (( i=1; i<22; i++ ))
do
	if [ -v dailySalaries["day $i"] ]
	then
		echo -e "day $i \t ${dailySalaries["day $i"]}"
	else
		break
	fi
done

##Approch 1 to print
#for dayNum in "${!dailySalaries[@]}"
#do
#	echo -e "$dayNum \t ${dailySalaries[$dayNum]}"
#done

