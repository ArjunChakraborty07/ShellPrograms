#!/bin/bash

echo -n "Enter a number to convert:"
read n
binary=( 0 0 0 0 0 0 0 0 )
index=0
while [ $n -gt 0 ] 
do
	binary[$index]=$(( $n%2 ))
	n=$(( n/2 ))
	index=$(( $index+1 ));	
done
echo
for(( i=7;i>=0;i-- ))
do
echo -n ${binary[i]}
done
