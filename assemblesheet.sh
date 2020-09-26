#!/bin/bash
mkdir frames\ opt

du frames\ 884x804

# for i in {1..338}
# do
#   convert -monitor -strip "frames 884x804/${i}.png" -crop 844x744+20+30 "frames opt/${i}.png"
# done

du frames\ opt

cd frames\ opt
# optipng -strip all *.png
# cd ..

du ../frames\ opt

rows=26
cols=13

for j in $(seq 1 $rows)
do
  a=""
  for i in $(seq 1 $cols)
  do
    p=$(( ( j - 1) * $cols + i ))
    a=$a" "$p".png"
  done
  echo ${a}
  convert -monitor ${a} +append row${j}.png
  echo $j
  convert -monitor sheet.png row${j}.png -append sheet.png
done
