#!/bin/bash -x
echo -e "Enter a Number:1.Feet to Inch\n 2.Inch to Feet\n 3.Feet to Meter 4.Meter to Feet\c"
read number
value=0
echo "Enter Number For conversion:"
 read num
	case $number in
	  1)value=$(($num*12));;
	  2) value=$(awk -v a=$num 'BEGIN {print(a/12)}')  ;;
	  3) value=$(awk -v a=$num 'BEGIN {print(a*0.3048)}') ;;
	  4) value=$(awk -v a=$num 'BEGIN {print(a*3.2808)}');;
	  *)  value=0 ;;
	esac

	echo "Value is:$value"
