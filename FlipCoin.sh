#!/bin/bash
echo " Welcome to Coin Flipping magic"
echo " here we go"
R=$(($RANDOM%2))
if [ $R -eq 1 ]
 then
   echo " Heads"
else
   echo " Tails"
fi
