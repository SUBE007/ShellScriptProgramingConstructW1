#!/bin/bash -x
printf "Enter the Array Size:"
read as
declare -a ar
echo "Read the Array Element "
#--------
for((i=0;i<as;i++))do
    read ar[$i]
  done
for((i=0;i<as;i++))do
    echo "${ar[$i]} "
done

#--------
 for((i=0;i<as-2;i++))do
   for((j=$i+1;j<as-1;j++))do
     for((k=$j+1;k<as;k++))do
        if(( ( ${ar[$i]} + ${ar[$j]} + ${ar[$k]} ) == 0))
         then
             echo "triplets:${ar[$i]},${ar[$j]},${ar[$k]}"
fi
      done
   done
done

