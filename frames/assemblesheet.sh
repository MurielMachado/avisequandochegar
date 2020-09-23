#!/bin/bash
b=""
for j in {1..33}
do
  a=""
  for i in {1..10}
  do
    p=$(( ( j - 1) * 10 + i ))
    echo $p
    a=$a" "$p".png"
    #convert ${i}.png sheet.png -append sheet.png
  done
  echo ${a}
  # echo "$j : $(convert ${a} -append sheet${j}.png)"
  b=$b" sheet"$j".png"
done
echo ${b}
convert ${b} +append sheet.png