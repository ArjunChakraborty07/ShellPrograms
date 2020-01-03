#!/bin/bash

	arr=( '-' '-' '-' '-' '-' '-' '-' '-' '-' )
	check=0
	function displayboard()
	{
		echo ${arr[0]} ${arr[1]} ${arr[2]}
		echo ${arr[3]} ${arr[4]} ${arr[5]}
		echo ${arr[6]} ${arr[7]} ${arr[8]}
	}
	function userPlay()
	{
		echo -n "Enter the index(1-9):"
		read n
		arr[$n-1]='X'
		displayboard
	}
	function cpuPlay()
	{
		m=0
		i=0
		while [ $i -eq 0 ]
		do
			m=$(($RANDOM%9));
			if [ ${arr[m]} = '-' ]
				then
					i=$(( i + 1 ))
					arr[$m]='O'
				fi
		done
		echo "CPU plays"
		displayboard
	}
	function checkResult()
	{
		gamecheck=2
		check=$(( check+1 ))
		if [ ${arr[0]} = ${arr[1]} ]
			then if [ ${arr[2]} = ${arr[1]} ]
				then if [ ${arr[2]} = 'X' ] 
					then
						echo "Winner is user"
							gamecheck=1
					fi
				fi
		elif [ ${arr[0]} = ${arr[3]} -a ${arr[3]} = ${arr[6]} -a ${arr[6]} = 'X' ] 
		then
			echo "Winner is user"
			gamecheck=1
		elif [ ${arr[3]} = ${arr[4]} -a ${arr[4]} = ${arr[5]} -a ${arr[5]} = 'X' ] 
		then
			echo "Winner is user"
			gamecheck=1
		elif [ ${arr[1]} = ${arr[4]} -a ${arr[4]} = ${arr[7]} -a ${arr[7]} = 'X' ] 
		then
			echo "Winner is user"
			gamecheck=1
		elif [ ${arr[6]} = ${arr[7]} -a ${arr[7]} = ${arr[8]} -a ${arr[8]} = 'X' ] 
		then
			echo "Winner is user"
			gamecheck=1
		elif [ ${arr[2]} = ${arr[5]} -a ${arr[5]} = ${arr[8]} -a ${arr[8]} = 'X' ]
		then
			echo "Winner is user"
			gamecheck=1
		elif [ ${arr[0]} = ${arr[4]} -a ${arr[4]} = ${arr[8]} -a ${arr[8]} = 'X' ] 
		then
			echo "Winner is user"
			gamecheck=1
		elif [ ${arr[2]} = ${arr[4]} -a ${arr[4]} = ${arr[6]} -a ${arr[6]} = 'X' ]
		then
			echo "Winner is user"
			gamecheck=1
		elif [ ${arr[0]} = ${arr[1]} -a ${arr[2]} = ${arr[1]} -a ${arr[2]} = 'O' ]
		then
			echo "Winner is CPU"
			gamecheck=0
		elif [ ${arr[0]} = ${arr[3]} -a ${arr[3]} = ${arr[6]} -a ${arr[6]} = 'O' ]
		then
			echo "Winner is CPU"
			gamecheck=0 
		elif [ ${arr[3]} = ${arr[4]} -a ${arr[4]} = ${arr[5]} -a ${arr[5]} = 'O' ] 
		then
			echo "Winner is CPU"
			gamecheck=0
		elif [ ${arr[1]} = ${arr[4]} -a ${arr[4]} = ${arr[7]} -a ${arr[7]} = 'O' ] 
		then 
			echo "Winner is CPU"
			gamecheck=0
		elif [ [${arr[6]} = ${arr[7]}] -a [${arr[7]} = ${arr[8]}] -a [${arr[8]} = 'O'] ] 
		then
			echo "Winner is CPU"
			gamecheck=0
		elif [ ${arr[2]} = ${arr[5]} -a ${arr[5]} = ${arr[8]} -a ${arr[8]} = 'O' ] 
		then
			echo "Winner is CPU"
			gamecheck=0
		elif [ ${arr[0]} = ${arr[4]} -a ${arr[8]} = ${arr[4]} -a ${arr[0]} = 'O' ] 
		then 
			echo "Winner is CPU"
			gamecheck=0
		elif [ [${arr[2]} = ${arr[4]}] -a [${arr[6]} = ${arr[4]}] -a [${arr[6]} = 'O'] ]
		then
			echo "Winner is CPU"
			gamecheck=0
		elif [ $check -eq 9 ]
		then
			echo "Match Drawn"
			gamecheck=-1
		else
			gamecheck=2
		fi
	}
		displayboard
		gamecheck=2
		while [ $gamecheck -eq 2 ]
		do
			userPlay
			echo "-------------------"
			checkResult
			if [ $gamecheck -eq 2 ]
			then
				cpuPlay
				echo "-------------------"
				checkResult
			fi
		done
