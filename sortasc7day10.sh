#! /bin/bash -x
read -p "first input:" a;
read -p "second input:" b;
read -p "third input:" c;
declare -A computes
com=$(($a*$b))
compute=$(($com+$c))
computes[1]=$compute
compute1=$(($com*$c))
computes[2]=$compute1
com1=`expr $a%$b`
compute2=$(($com+$c))
computes[3]=$compute2
com2=$(($a+$c))
compute3=$(($com/$b))
computes[4]=$compute3
arr=()
counter=0
for i in ${!computes[*]}
do
	arr[((counter++))]=${computes[i]}
done
echo ${arr[*]}
for (( i=0; i<=2; i++ ))
do
	for (( j=i+1; j<=3; j++ ))
	do
		if [ ${arr[j]} -ge ${arr[i]} ]
		then
			tmp=${arr[i]}
			arr[i]=${arr[j]}
            arr[j]=$tmp
		fi
	done
done

echo ${arr[*]} 

