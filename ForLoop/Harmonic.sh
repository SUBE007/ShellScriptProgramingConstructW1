#!/bin/bash -x
echo -e "Enter which harmonic value you wants:\c"
read num
num1=$num
k=0
t=1
   while (( $num > 0 ))
   do
       k=$(echo $k $t | awk '{print ( $1 + 1/$2 )}')
          (( t++ ))
          (( num-- ))
   done

echo "$num1 th harmonic Value:$k"
