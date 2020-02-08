#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To Employee Wage Computation Program"

#CONSTANT
IS_EMPLOYEE_PRESENT=1;

#GENERATING RANDOM VALUE 
employeeCheck=$((RANDOM%2))

#CHECKING CONDITION
if [ $IS_EMPLOYEE_PRESENT -eq $employeeCheck ]
then
	echo "EMPLOYEE IS PRESENT"
else
	echo "EMPLOYEE IS ABSENT"
fi
