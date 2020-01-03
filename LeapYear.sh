#!/bin/bash

		echo -n "Enter a year for checking:"
		read year
		echo
		if (( $year % 100 == 0 )) 
		then
			if (( $year % 400 == 0 ))
			then
				echo "Leap Year"
			else
				echo "Not a leap year"
			fi
		elif (( $year % 4 == 0 ))
		then
			echo "Leap Year"
		else
			echo "Not a leap year"
		fi
