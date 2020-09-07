#!/bin/sh
touch tmp.txt && \
touch secrets.txt && \
apg -a0 -n10 -m12 > tmp.txt && \
apg -a1 -n10 -m12 >> tmp.txt && \
cat tmp.txt > secrets.txt && \
apg -a0 -n10 -m24 > tmp.txt && \
apg -a1 -n10 -m24 >> tmp.txt && \
cat tmp.txt >> secrets.txt && \
apg -a0 -n10 -m48 > tmp.txt && \
apg -a1 -n10 -m48 >> tmp.txt && \
cat tmp.txt >> secrets.txt && \
apg -a0 -n10 -m96 > tmp.txt && \
apg -a1 -n10 -m96 >> tmp.txt && \
cat tmp.txt >> secrets.txt && \
cat secrets.txt && \
mv secrets.txt secrets`date +%d%H%M%S`.txt && \
rm tmp.txt && \
ccrypt -e *.txt && \
exit
