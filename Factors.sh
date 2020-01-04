#!/bin/bash
echo -n "Entet a value:"
read N
echo -n "Factors of "$N" are " 
for ((i=2;i*i<=N;i++ )) 
do
	while [ $(($N%$i)) = 0 ] 
	do
		echo -n  $i" "
  
		N=$(($N/$i));
	done
done
if [ $N -gt 2 ]
then
	echo -n $N
fi
echo
