#!/bin/bash
echo "Harmonic Number"
echo -n "Enter the value of N:";
sum=0
#echo 1/3 | node -p
read N
for(( i=1;i<=N;i++ ))
	do
	    sum=$((echo "scale=6; $sum+(1/$i)" )|bc) 
	done
echo "Harmonic Sum=" $sum;
