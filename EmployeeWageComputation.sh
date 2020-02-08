#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To Employee Wage Computation Program"

#CONSTANT
IS_EMPLOYEE_PRESENT=1;
EMPLOYEE_RATE_PER_HR=20;
EMPLOYEE_HRS=8;

#GENERATING RANDOM VALUE 
employeeCheck=$((RANDOM%2))

#CHECKING CONDITION
if [ $IS_EMPLOYEE_PRESENT -eq $employeeCheck ]
then
	echo "EMPLOYEE IS PRESENT"
	dailySalary=$(($EMPLOYEE_RATE_PER_HR * $EMPLOYEE_HRS))
	echo "Daily Salary = $dailySalary"
else
	echo "EMPLOYEE IS ABSENT"
fi
