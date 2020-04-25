#!/bin/bash -x
echo -e "Enter a Number:\c"
read number
	case $number in
		  1) echo "One" ;;
		  10) echo "Ten" ;;
		  100) echo "Hundread" ;;
		  1000) echo "Thousand" ;;
		  10000) echo "Ten Thousand" ;;
		  100000) echo "Lacs" ;;
		  1000000) echo "Ten Lacs" ;;
		  *) echo "Not Given Word this Number" ;;
	esac
