#!/bin/bash -x
echo -e "Enter a Number:\c"
read num
if(($num>=1&&$num<=7))
then
	  if(($num==1))
	  then
		 echo "Monday"
	  elif(($num==2))
	   then
		 echo "TuesDay"
	  elif(($num==3))
	   then
		 echo "WedensDay"
	  elif(($num==4))
	  then
		 echo "Thursday"
	  elif(($num==5))
	  then
		 echo "Friday"
	 elif(($num==6))
	 then
		 echo "Satuerday"
	 elif(($num==7))
	  then
		 echo "Sunday"
	  fi
else
  echo "Enter Proper Day "
fi


