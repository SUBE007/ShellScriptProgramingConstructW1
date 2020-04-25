#!/bin/bash -x
echo -e "Enter a number for Table of two:\c"
read num
num1=$num
num2=2
i=0

while (($i <= $num))
do
     if (( 2**$i <= 2**$num1 ))
     then
        echo $(($num2**$i))
     fi
       ((i++))
done
