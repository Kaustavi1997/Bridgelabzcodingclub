#! /bin/bash -x
present=1
absent=0
isparttime=1
isfulltime=0
empwageperhour=20
workingdays=20
totsalary=0
hours=0
hrsperday=0

empcheck=$((RANDOM%2))
case $empcheck in 
	$isfulltime)
		emphrs=8
		salaryperday=$(($emphrs*$empwageperhour))	
		;;
	$isparttime)
		emphrs=4
		salaryperday=$(($emphrs*$empwageperhour))
		;;
esac

for (( i=1; i<=20; i++ ))
do
	a=$((RANDOM%2))
	if [ $a -eq $present ]
	then
		echo "employee is present"
	else
		echo "employee is absent"
	fi

	hrsperday=$(($a*$emphrs))
	hours=$(($hours+$hrsperday))
done
echo $hours
if [ $hours -ge 100 ]
then
	b=$(($hours*$empwageperhour))
	echo $b
else 
	echo "less than 100 hrs"
fi




