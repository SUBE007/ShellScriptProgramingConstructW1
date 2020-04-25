#!/bin/bash -x
flipCoin=$((RANDOM%2))

if(($flipCoin==1))
then
   echo "Head"
else
   echo "Tail"
fi
 
