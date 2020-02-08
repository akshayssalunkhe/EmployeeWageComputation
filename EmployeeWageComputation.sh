#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To Employee Wage Computation Program"

#CONSTANTS
IS_WORKING_FULL_TIME=1;
IS_WORKING_PARTTIME=2;
EMPLOYEE_RATE_PER_HR=20;
EMPLOYEE_HRS=8;

#VARIABLES
salary=0;
employeeHrs=0;

#GENERATING RANDOM VALUE 
employeeCheck=$((RANDOM%3))

#CHECKING CASE
case $employeeCheck in
		$IS_WORKING_FULL_TIME)
					employeeHrs=8
					;;
		$IS_WORKING_PARTTIME)
					employeeHrs=4
					;;
		*)
					employeeHrs=0
					;;
esac

#CALCULATING SALARY
salary=$(($EMPLOYEE_RATE_PER_HR * $employeeHrs))
echo " Daily Salary Of Employee = $salary "
