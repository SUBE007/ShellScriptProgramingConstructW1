#!/bin/bash -x

one=0
two=0
three=0
four=0
five=0
six=0
declare -A RollDice
count=0
function rollDiceUntilTenOneOfThemTen()
{

  while (( $one<10 && $two<10 && $three<10 && $four<10 && $five<10 && $six<10 ))
  do
	rollDice=$(($((RANDOM%6))+1))

	if(($rollDice==1))
	then
		((one++))
	elif(($rollDice==2))
	then
		((two++))
	elif(($rollDice==3))
        then
                ((three++))
	elif(($rollDice==4))
        then
                ((four++))
	elif(($rollDice==5))
        then
                ((five++))
	elif(($rollDice==6))
        then
                ((six++))
	fi
done
}
rollDiceUntilTenOneOfThemTen

	RollDice[1]=$one
	RollDice[2]=$two
	RollDice[3]=$three
	RollDice[4]=$four
	RollDice[5]=$five
	RollDice[6]=$six

#echo "Dictonary:${RollDice[@]}"

echo ": ${RollDice[1]}"
maxtime="${RollDice[1]}"
mintime="${RollDice[1]}"

	for((i=1;i<=${#RollDice[@]};i++))
	do
	   if (($maxtime < ${RollDice[$i]} ))
	   then
		 maxtime=${RollDice[$i]}
	   fi
	done

	for((j=1;j<=${#RollDice[@]};j++))
	do
	   if (($mintime > ${RollDice[$j]} ))
	   then
	        mintime=${RollDice[$j]}
	   fi
	done
echo "Dictonary:${RollDice[@]}"
echo "Minimum occurence: $mintime"
echo "Maximum occurence: $maxtime"


