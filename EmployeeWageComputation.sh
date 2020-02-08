#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To Employee Wage Computation Program"

#CONSTANT
IS_WORKING_FULL_TIME=1;
IS_WORKING_PARTTIME=2;
EMPLOYEE_RATE_PER_HR=20;
EMPLOYEE_HRS=8;

#VARIABLES
salary=0;
employeeHrs=0;
#GENERATING RANDOM VALUE 
employeeCheck=$((RANDOM%3))

#CHECKING CONDITION AND CALCULATING DAILY WAGE
if [ $IS_WORKING_FULL_TIME -eq $employeeCheck ]
then
	employeeHrs=8;
elif [ $IS_WORKING_PARTTIME -eq $employeeCheck ]
then
	employeeHrs=4;
else
	employeeHrs=0;
fi

salary=$(($EMPLOYEE_RATE_PER_HR * $employeeHrs))
echo " Daily Salary Of Employee = $salary "
