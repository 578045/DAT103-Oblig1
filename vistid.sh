#!/bin/bash

sum=0
declare -i tall

read -p "Hva er hendelsen? " hendelsen
output="$(cat hendelse.log | grep -i $hendelsen | cut -f 2)"

for tall in $output; do
  sum+=$tall
done
echo $sum
