#!/bin/bash -x

function palindrome()
{
  num=$1
 temp=$1
str=""
ap=0
while ((num!=0))
 do
  rem=$(( $num % 10 )) # get Remainder 
    num=$(( $num / 10 ))  # get next digit

    str=$( echo ${str}${rem} )
  done
if(($str==$temp))
 then
  echo "Number is palindrome"
 else
 echo "Number is not palindrome"
fi

}

  read num
  palindrome $num
