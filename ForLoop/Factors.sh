#!/bin/bash -x
echo -e "Enter the Number:\c"
read  num
for((i=1;i<=num/2;i++))
do
    if(( num % i == 0))
     then
       echo "$i"
     fi
done
echo "$num"
 