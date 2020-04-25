#!/bin/bash -x

function MyFun()
{
echo $1
}
result=$( MyFun $((RANDOM%2)) )

if (($result==1))
then
  echo "Success"
else
  echo "Not Success"
fi
