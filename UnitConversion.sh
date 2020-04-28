#!/bin/bash -x
echo " one feet is equal to 12 inch"

	feet=$(awk -v a=42 -v b=12 'BEGIN{printf("%.2f",( a/b ) )}')
	echo " for 42 inch is equal to: $feet FEET"
	echo " Rectangular plot of 60 feet x 40 feet in meter is"

	meter1=$(awk -v a1=60 -v b1=0.3 'BEGIN{printf("%.2f",( a1*b1 ) )}')
	meter2=$(awk -v a2=40 -v b2=0.3 'BEGIN{printf("%.2f",( a2*b2 ) )}')
	echo " Rectangular Plot in meter is: $meter1 meter x $meter2 meter"

	squareMeter=$(awk -v met1=$meter1 -v met2=$meter2 'BEGIN{printf("%.3f",( met1*met2 ) )}')
	echo "Area Of One Plot: $squareMeter metersquare"
	echo "one squareMeter is equal to : 0.000247105 acres"
	echo "area of 25 such plots in acres is: "

	acres=$(awk -v a=$squareMeter -v b=0.000247105 'BEGIN{printf("%.6f",( a*b*25 ) )}')
	echo "the area of the plot is: $acres Acres"
