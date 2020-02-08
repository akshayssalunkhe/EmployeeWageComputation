#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To Employee Wage Computation Program"

#CONSTANTS
IS_WORKING_FULL_TIME=1;
IS_WORKING_PART_TIME=2;
EMPLOYEE_RATE_PER_HR=20;
WORKING_DAYS_PER_MONTH=20;
WORKING_HRS_PER_MONTH=100;

#VARIABLES
salary=0;
employeeHrs=0;
totalEmployeeHrs=0;

function getWorkingHours() 
{
	 case $1 in
         $IS_WORKING_FULL_TIME)
                  	employeeHrs=8
                  	;;
         $IS_WORKING_PART_TIME)
                  	employeeHrs=4
                  	;;
         *)
                  	employeeHrs=0
                  	;;
   esac

echo $employeeHrs 
}

#USING LOOP TO VERIFY CONDITION
for (( totalWorkingDays=1,totalEmployeeHrs=0;  totalWorkingDays<=20  &&  totalEmployeeHrs<=100 ; totalWorkingDays++ ))
do
	employeeHrs="$( getWorkingHours $((RANDOM%3)) )"
	totalEmployeeHrs=$(($totalEmployeeHrs+$employeeHrs))

	#CALCULATING DAILY SALARY AND ADDING IT TO GET MONTHLY SALARY
	salary=$(($EMPLOYEE_RATE_PER_HR * $employeeHrs))
	totalSalary=$(($totalSalary+$salary))
done
