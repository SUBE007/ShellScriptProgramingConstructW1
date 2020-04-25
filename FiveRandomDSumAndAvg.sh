#!/bin/bash -x

		randomNum1=$((RANDOM%100))
		randomNum2=$((RANDOM%100))
		randomNum3=$((RANDOM%100))
		randomNum4=$((RANDOM%100))
		randomNum5=$((RANDOM%100))
		average=$(($(($randomNum1+$randomNum2+$randomNum3+$randomNum4+$randomNum5))/5))
		sum=$(($randomNum1+$randomNum2+$randomNum3+$randomNum4+$randomNum5))

		echo "Sum of All Five Number=$sum, /n Average Of All Five Number=$average"

