#!/bin/bash -x
isFullTime=1
isPartTime=2
isAbsent=0
empRateHr=60
numOfWorkDays=20
maxWorkHrs=40
totalWorkDays=0
totalEmpHrs=0
while [[ totalEmpHrs -le maxWorkHrs && totalWorkDays -le numOfWorkDays ]]
do	((totalWorkDays++))
	empcheck=$((RANDOM%3))
	case $empcheck in
		$isFullTime) 
				empHrs=8
				;;
		$isPartTime)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
	esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
	totalSalary=$(($totalEmpHrs*$empRateHr))
	echo "total Salary of Employee is:" $totalSalary
#File Created and executed in Branch2 and  updated in same line
