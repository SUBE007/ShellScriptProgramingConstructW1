#!/bin/bash -x
echo "Five Random Numbers: "
randomDig1=$((RANDOM%1000))
randomDig2=$((RANDOM%1000))
randomDig3=$((RANDOM%1000))
randomDig4=$((RANDOM%1000))
randomDig5=$((RANDOM%1000))
MAX=0
if(( (($randomDig1>(($randomDig2||$randomDig3||$randomDig4||$randomDig5)) ))  ))
then
	MAX=$randomDig1
	elif(((($randomDig2>(($randomDig1||$randomDig3||$randomDig4||$randomDig5)) ))  ))
	then
	MAX=$randomDig1
	elif(( (($randomDig3>(($randomDig2||$randomDig1||$randomDig4||$randomDig5)) ))  ))
	 then
	MAX=$randomDig1
	elif(( (($randomDig4>(($randomDig2||$randomDig3||$randomDig1||$randomDig5)) ))  ))
	 then
	MAX=$randomDig1
	else
	MAX=$randomDig1
fi
echo "Maximum Of In Five Random Value:$MAX"

