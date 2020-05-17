#! /bin/bash -x
present=1
absent=0
isparttime=1
isfulltime=0
empwageperhour=20
workingdays=20
a=$((RANDOM%2))
if [ $a -eq $present ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi

if [ $a -eq 0 ]
then
	empcheck=2
else
	empcheck=$((RANDOM%2))
fi

case $empcheck in 
	$isfulltime)
		emphrs=8	
		;;
	$isparttime)
		emphrs=4
		;;
	*)
		emphrs=0
		;;

esac
salaryperday=$(($emphrs*$empwageperhour))
salarypermonth=`expr $salaryperday \* $workingdays`
echo $salarypermonth

