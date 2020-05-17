#! /bin/bash -x
present=1
absent=0
isfulltime=0
empwageperhour=20
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
	empcheck=$((RANDOM%1))
fi
case $empcheck in 
	$isfulltime)
		emphrs=8
		salaryperday=$(($emphrs*$empwageperhour))	
		;;
	*)
		emphrs=0
		salaryperday=$(($emphrs*$empwageperhour))
		;;
esac
echo $salaryperday
