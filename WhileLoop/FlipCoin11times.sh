#!/bin/bash -x
echo "Enter How many time flip the coin:"
	read num
	hc=0
	tc=0
	sum=$num

 if(($num>0))
 then
	  while (($num>0))
          do
		ht=$(((RANDOM%2)))
	            if (( ht==1 ))
	            then
		       hc=`expr $hc + 1`
	            else
		       tc=`expr $tc + 1`
	            fi
		  #sum=`expr $sum - 1`
	           if(($hc==11))
		   then
	               #echo "Head Won:"
	               break
	           elif(($tc==11))
	           then
	               #echo "Tail Won:"
		       break
	           fi
	     done
   else
   echo"Please Enter A number For Flip The Coin:"
fi

echo "No. of heads:$hc"
echo "No. of tails:$tc"
if(($hc==11))
then
  echo "Head Won:"
elif(($tc==11))
then
  echo "Tail Won:"
fi

