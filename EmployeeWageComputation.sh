#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To Employee Wage Computation Program"

#DECLARING DICTIONARY
declare -A employeeDailyWage

#CONSTANTS
IS_WORKING_FULL_TIME=1;
IS_WORKING_PART_TIME=2;
EMPLOYEE_RATE_PER_HR=20;
WORKING_DAYS_PER_MONTH=20;
WORKING_HRS_PER_MONTH=100;

#VARIABLES
totalSalary=0;
employeeHrs=0;
totalEmployeeHrs=0;

#FUNCTION TO  GET DAILY WORKING HOURS
function getWorkingHours() {
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
	echo "$employeeHrs"
}

#FUNCTION TO CALCULATE DAILY WAGE
function calcDailyWage () {
	local workHrs=$1
	dailyWage=$(($employeeHrs*$EMPLOYEE_RATE_PER_HR))
	echo "$dailyWage"
}

#USING LOOP TO VERIFY CONDITION
for (( totalWorkingDays=1,totalEmployeeHrs=0;  totalWorkingDays<=20  &&  totalEmployeeHrs<=100 ; totalWorkingDays++ ))
do
	employeeHrs="$( getWorkingHours $((RANDOM%3)) )"
	totalEmployeeHrs=$(($totalEmployeeHrs+$employeeHrs))
	employeeDailyWage[$totalWorkingDays]=$( calcDailyWage $workHours )
	totalSalary=$(( ${employeeDailyWage[$totalWorkingDays]}+$totalSalary ))
done

echo " Daily Wage " ${employeeDailyWage[@]}
echo " Day Number " ${!employeeDailyWage[@]}
echo " Total Monthly salary = $totalSalary "
