#!/bin/bash
echo "command line arument "$1
if [ $1 -lt 32 -a $1 -ge 0 ]
then
	for(( i=0;i<=$1;i++ ))
	do
		m=2^$i
		echo  $m ": " $[2**$i]
	done
else
	echo "Wrong Input"
fi
