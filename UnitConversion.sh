#!/bin/bash -x
	oneft=12
	c=42
	val=$(awk -v a=$c'BEGIN{print("%.2f\n",a/12) }')
	echo "val=$val"
