#!/bin/bash
echo "Triplet Zero"
echo -n "Enter the size of array:"
read n
echo
echo -n "Enter the elements accordingly"
		for((i=0;i<n;i++))
		do
			read arr[$i]
		done
echo the triplets are as follows:-
	    for(( i=0;i<n;i++))
	    do
	    	for((j=i+1;j<n;j++))
	    	do
	    		for((k=j+1;k<n;k++))
	    		do
	    			if [ $i!=$j -a $j!=$k ]
	    			then
	    				if [ $(( ${arr[i]}+${arr[j]}+${arr[k]} )) -eq 0 ]
	    				then
	    					echo ${arr[i]}" "${arr[j]}" "${arr[k]}
	    				fi
	    			fi
	    		done
	    	done
	    done
