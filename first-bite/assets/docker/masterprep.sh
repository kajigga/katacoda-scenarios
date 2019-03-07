#!/bin/bash

i=1
sp="/-\|"
echo -n ' '

## declare an array variable
declare -a arr=("master" "centos" "ubuntu" "pg")

## now loop through the above array
echo "waiting to see"
for i in "${arr[@]}"
do
   # or do whatever with individual element of the array
   echo $i
   until salt-key -l acc | grep -q $i; do
        printf "\b${sp:i++%${#sp}:1}"
   done

done

echo 'All ready'
