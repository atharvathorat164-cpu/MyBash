#!/usr/bin/env bash
for (( i=1; i<=$1; i++ ))
do
if (( i%3 == 0 && i%5 == 0 ))
then
echo " FIZZBUZZ "
elif (( i%5 == 0 ))
then
echo " BIZZ "
elif (( i%3 == 0 ))
then
echo " FIZZ "
else
echo "$i"
fi
done

