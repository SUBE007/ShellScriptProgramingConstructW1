#!/bin/bash -x
echo -e "Enter a Number:\c"
read Weekday
   case $Weekday in
	  1) echo "Monday" ;;
	  2) echo "Tuesday" ;;
	  3) echo "Wedensday" ;;
	  4) echo "Thursday" ;;
	  5) echo "Friday" ;;
	  6) echo "Saturday" ;;
	  7) echo "Sunday" ;;
	  *) echo "Not a Valid Number" ;;
   esac
