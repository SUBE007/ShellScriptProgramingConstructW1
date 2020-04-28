#!/bin/bash -x
first=1
last=100
echo "Guess Any No. In Your Mind between 1 and 100 "
while (( $first < $last ))
do
	mid=$((($first+$last)/2))
        echo "Middle Number is: $mid"
	echo "your guessed number is $mid :" $mid
        read -p "if $mid is your guessed number enter 1 else 0 : " ismid
              if [ $ismid == 1 ]
                then
                       break
                fi

		read -p "if your no. is higher than $mid then enter 1 else 0 : " isChange
		if [ $isChange == 1 ]
		then
			first=$mid+1
		else
			last=$mid-1
		fi

done
echo " your guessed number is : $mid  "

