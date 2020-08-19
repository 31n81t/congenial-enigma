touch tmp.txt && \
touch secrets.txt && \
apg -a 0 -n 10 -m 12 > tmp.txt && \
apg -a 1 -n 10 -m 12 >> tmp.txt && \
cat tmp.txt > secrets.txt && \
apg -a 0 -n 10 -m 24 > tmp.txt && \
apg -a 1 -n 10 -m 24 >> tmp.txt && \
cat tmp.txt >> secrets.txt && \
apg -a 0 -n 10 -m 48 > tmp.txt && \
apg -a 1 -n 10 -m 48 >> tmp.txt && \
cat tmp.txt >> secrets.txt && \
apg -a 0 -n 10 -m 96 > tmp.txt && \
apg -a 1 -n 10 -m 96 >> tmp.txt && \
cat tmp.txt >> secrets.txt && \
mv secrets.txt secrets`date +%S%M`.txt && \
cat tmp.txt && \
rm tmp.txt && \
ccrypt -e *.txt && \
exit
