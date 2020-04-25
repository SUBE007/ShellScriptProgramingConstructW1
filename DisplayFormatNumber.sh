#!/bin/bash -x
echo -e "Enter a Number:\c"
read num
	if(($num>=1&&$num<=100000))
	then
		   if(($num==1))
		   then
			 echo "One"
		   elif(($num==10))
		   then
			 echo "Ten"
		 elif(($num==100))
		 then
			 echo "Hundread"
		 elif(($num==1000))
		 then
			 echo "Thousand"
		 elif(($num==10000))
		 then
			 echo "Ten Thousand"
		 elif(($num==100000))
		 then
			 echo "Lacs"
		 fi
	else
	  echo "Enter the Number In Given Range "
	fi


