#!/bin/bash -x
echo -e "Enter The Three Number:/c"
read a
read b
read c
operation1=$(($a+$b*$c))
operation2=$(($c+$(($a/$b))))
operation3=$(($a%$b+$c))
operation4=$(($a*$b+$c))

 MAX=0
 MIN=0

if(( (($operation1>(($operation2||operation3||operation4)) )) ))
then
        MAX=$operation1
        elif(( (($operation2>(($operation1||operation3||operation4)) )) ))
	then
	MAX=$operation2
	elif(((($operation3>(($operation2||operation1||operation4)) ))))
	then
	MAX=$operation3
	else
	MAX=$operation4
fi

if(( (($operation1<$operation2 && $operation1<$operation3 && $operation1<$operation4)) ))
then
	    MIN=$operation1
	elif((  (($operation2<$operation1 && $operation2<$operation3 && $operation2<$operation4))   ))
	then
	   MIN=$operation2
	 elif(( (($operation3<$operation2 && $operation3<$operation1 && $operation3<$operation4))  ))
	 then
	   MIN=$operation3
	else
	   MIN=$operation4
fi

echo "Exp1:$operation1 :: Exp2:$operation2 :: Exp3:$operation3 :: Exp4:$operation4 "
echo "Minimum Among Four Expression:$MIN"
echo "Maximum Among Four Expression:$MAX"

