#!/bin/bash -x
echo -e "Enter a Number:\c"
read num
if(($num>=0&&$num<=9))
  then
	 if(($num==1))
	 then
		 echo "one"
	 elif(($num==2))
	 then
		 echo "two"
	 elif(($num==3))
	 then
		 echo "three"
	 elif(($num==4))
	 then
		 echo "Four"
         elif(($num==5))
	 then
		 echo "Five"
	 elif(($num==6))
	 then
		 echo "Six"
	 elif(($num==7))
	 then
		 echo "Seven"
	 elif(($num==8))
	 then
		 echo "Eight"
	 elif(($num==2))
	 then
		 echo "Nine"
	 elif(($num==0))
	 then
		 echo "Zero"
	 fi
else
  echo "Enter Single Digit"
fi
