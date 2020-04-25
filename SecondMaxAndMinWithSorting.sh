#!/bin/bash -x
echo -e "Enter How Many three Random Number you want generate:\c"
read num
count=0

function generateNumber()
{
   num=$1
 while (($num!=0))
  do
     n=$((RANDOM%1000))
      array[ ((count++)) ]=$n
   ((num--))
  done
 }
generateNumber $num

echo " ${array[@]}"
length=${#array[@]}

for (( i = 0; i < $length ; i++ ))
do
	for (( j = $i; j <$length; j++ ))
	do
		if [ ${array[$i]} -gt ${array[$j]}  ]; then
		t=${array[$i]}
		array[$i]=${array[$j]}
		array[$j]=$t
		fi
	done
done

echo "Second Min in Random Array: ${array[1]}"
echo "Second Max in Random Array: ${array[$length-2]}"






