#!/bin/bash
declare -A matrix
echo -n "Enter row:"
read num_rows
echo -n "Enter Column:"
read num_columns

for (( i=0;i<num_rows;i++ )) do
    for ((j=0;j<num_columns;j++)) do
        read matrix[$i,$j]
    done
done
echo "Matrix Printing"
for (( i=0;i<num_rows;i++ )) do
	for ((j=0;j<num_columns;j++)) do
		echo ${matrix[$i,$j]}
	done
done
