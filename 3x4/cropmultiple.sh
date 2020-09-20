#!/bin/bash
xmargin=266
ymargin=297
w=861
h=817
for i in {1..300}
do
  j=$(( (i - 1) % 12))
  dx=$(( xmargin + (j % 3) * w ))
  dy=$(( ymargin + (j / 3) * h ))
  p=$(((i-1)/12 + 1))
#  echo "${i} : $(convert -crop ${w}x${h}+${dx}+${dy} Pag${p}.png crop/${i}.png)"
  echo "${i} : $(convert -crop ${w}x${h}+${dx}+${dy} -trim Pag${p}.png trim/${i}.png)"
done
