#!/bin/bash -x
echo -e "Enter three Number:\c"
read number1
read number2
read number3
      operation1=$(($number1+$number2*$number3))
      operation2=$(($numberc+$number1/$number2))
      operation3=$(($number1%$number2+$number3))
      operation4=$(($number1*$number2+$number1))

echo "operation1:$operation1, operation2:$operation2, operation3:$operation3, operation4:$operation4"
