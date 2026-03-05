#!/usr/bin/env bash

echo "Enter the number of terms:"
read n

a=0
b=1
s=0

if [ "$n" -gt 2 ]
then
    for ((i=2; i<n; i++))
    do
        (( s = a + b ))
        a=$b
        b=$s
    done
    echo "The nth Fibonacci number is: $s"
else
    if [ "$n" -eq 1 ]
    then
        echo "0"
    else
        echo "1"
    fi
fi
