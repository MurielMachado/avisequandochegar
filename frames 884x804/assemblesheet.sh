#!/bin/bash
b=""
for i in {1..33}
do
  a=""
  for i in {1..10}
  do
    p=${$i + (${j} - 1) * 10}
    echo ${$p}
    a=$a" "$p".png"
    #convert ${i}.png sheet.png -append sheet.png
  done
  echo ${a}
  cmd=convert ${a} -append sheet${j}.png
  echo ${cmd}
  b=$b" sheet"$j".png"
done
echo ${b}
convert ${b} -append sheet.png