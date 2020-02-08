#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To Employee Wage Computation Program"

#CONSTANTS
IS_WORKING_FULL_TIME=1;
IS_WORKING_PARTTIME=2;
EMPLOYEE_RATE_PER_HR=20;
EMPLOYEE_HRS=8;
WORKING_DAYS_PER_MONTH=20;

#VARIABLES
salary=0;
employeeHrs=0;
salaryOfMonth=0;

#USING LOOP TO GET MONTHLY SALARY
for (( day=1; day<=$WORKING_DAYS_PER_MONTH; day++ ))
do
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

#CALCULATING DAILY SALARY AND ADDING IT TO GET MONTHLY SALARY
salary=$(($EMPLOYEE_RATE_PER_HR * $employeeHrs))
totalSalary=$(($totalSalary+$salary))
done
