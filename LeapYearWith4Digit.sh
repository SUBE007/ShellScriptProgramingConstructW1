#!/bin/bash -x
echo "enter the any year in format(yyyy):"
read year
 digit=0 yr=$year
	  while (( $yr != 0 ))
	    do
	       digit=$(($digit + 1))
	       yr=$(($yr/10))
	   done
	   echo "No of digit:$digit"

if (( $digit > 3 ))
then
          if (( (( $year % 4 ))==0 ))
          then
		    if (( (( $year % 100))==0 ))
		    then
				if (( (( $year % 400 )) == 0 ))
				then
				  echo "its a leap year"
				 else
				 echo "its not a leap year"
			       fi
		     else
		     echo "Its not a leap year"
		   fi
          else
          echo "its not a leap year"
        fi
  else
  echo "enter more than 4 Digit year Number"
fi
