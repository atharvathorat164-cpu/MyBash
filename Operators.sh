#!/usr/bin/env bash
n=0
if [[ "$1" == "+" ]]
then
for (( i=2; i<="$#"; i++ ))
do
 (( n+= ${!i} ))
done
echo "$n"
elif [[ "$1" == "%" ]]
then 
(( n="$3" % "$2" ))
echo "$n"
elif [[ "$1" == "*" ]]
then
v="$#"
(( n="$2" *  ${!v} )
echo "$n"
else
echo "Hiii"
fi
