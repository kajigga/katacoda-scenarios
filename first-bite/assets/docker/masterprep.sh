#!/bin/bash

i=1
sp="/-\|"
echo -n ' '

## declare an array variable
declare -a arr=("master" "centos" "ubuntu" "pg")

## now loop through the above array
for i in "${arr[@]}"
do
   echo "waiting to see $i"
   # or do whatever with individual element of the array
   until salt-key -l acc | grep -q -s $i; do
        printf "\b${sp:i++%${#sp}:1}"
        sleep 1
   done

done

echo 'All ready'
