#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 44 45 46 47 48 49 51 52;do
        echo $i
        mysql -h brainome -u cndd_annoj -e "CREATE TABLE IF NOT EXISTS kkolodzi_CEMBA.v2_clust$i LIKE intact.tmp_reads"
echo "done" 
done
