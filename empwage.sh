#!/bin/bash -x
isPartTime=1
isFullTime=2
rateperHour=20;
numofWorkDays=25;
totalSalary=0
for((day=1;day<=numofWorkDays;day++))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
        	$isFullTime)
                		empHours=8
                		;;
        	$isPartTime)
                		empHours=4
                		;;
        		*)
        			empHours=0
                		;;
	esac
	dayempWage=$(( $rateperHour * $empHours ));
	totalSalary=$totalSalary+$dayempwage
done
echo $totalSalary

