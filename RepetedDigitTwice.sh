#!/bin/bash -x
printf "Enter the Array Size:"
read as
declare -a ar
count=0
echo "Read the Array Element "
#--------
for((i=0;i<$as;i++))
  do
     array[$i]=$i
  done

    echo "Array elements:${array[@]} "

function repeatedElement()
{
   num=$1
   sum=0
   temp=$num
while (($num!=0))
do
    rem=$num%10
    sum=$(($sum*10 +$rem))
    num=$(($num/10))
done
 if(($sum==$temp))
   then
	repeatArray[ ((count++)) ]=$sum
  fi
}


for((i=0;i<${#array[@]};i++))
  do
     repeatedElement ${array[$i]}
  done
echo "Repeated Array elements:${repeatArray[@]} "

