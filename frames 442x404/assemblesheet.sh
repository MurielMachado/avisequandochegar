#!/bin/bash
b=""
for j in {1..15}
do
  a=""
  for i in {1..22}
  do
    p=$(( ( j - 1) * 22 + i ))
    echo $p
    a=$a" "$p".png"
    #convert ${i}.png sheet.png -append sheet.png
  done
  echo ${a}
  #echo "$j : $(convert ${a} -append sheet${j}.png)"
  b=$b" sheet"$j".png"
done
echo ${b}
convert ${b} +append sheet.png
