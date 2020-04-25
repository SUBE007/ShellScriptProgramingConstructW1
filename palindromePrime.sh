#!/bin/bash -x

function palindrome()
{
  num=$1
 temp=$1
 str=""
ap=0
	while ((num!=0))
	do
	  remainder=$(( $num % 10 ))  
	    num=$(( $num / 10 ))  # get next digit

	    str=$( echo ${str}${remainder} )
	  done
	if(($str==$temp))
	  then
	     echo  "Number is Prime and Palindrome"
	  else
	     echo "Number is prime but not palindrome"
	 fi
}

function prime()
{
   num=$1
for((i=2; i<=$num/2; i++))
do
  if (( $(($num%i)) == 0 ))
  then
    echo "$num is not a prime No Need to Check Further:"
    exit
  fi
done
      palindrome $num
}
echo "Enter the Number Which You Want To Check PrimePalindrome:"
  read num
  prime $num

