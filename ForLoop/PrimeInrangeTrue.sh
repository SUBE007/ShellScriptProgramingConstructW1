#!/bin/bash -x
echo "Enter the Number For Check:"
read range
echo 2

for(( j=3; $j<$range;j++))
do
i=2
x=$(($j-1))
for(( i=2;$j<$x;i++))
 do
if (($j % $i!=0))
then
 i=$(( $i + 1))
else
break
fi
done
if [ $i -eq $j ]
then
echo $j
fi
j=$(($j+1))
done
