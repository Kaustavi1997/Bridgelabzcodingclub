#! /bin/bash -x 
present=1
absent=0
a=$((RANDOM%2))
if [ $a -eq $present ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi
