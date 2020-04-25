#!/bin/bash -x
count=0
function prime(){
        number=$1
	for((i=2; i<=$number; i++))
        do
                while (($number%$i==0))
                do
                        array[ ((count++)) ]="$i"
                        number=$((number/i))
                done
        done
echo "prime factor array: ${array[@]}"
}

read -p "Enter a number for which you want Prime Factor: "  a
prime $a



