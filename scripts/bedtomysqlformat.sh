#!/bin/bash
#path= '/cndd/kkolodzi/REPTILE/MOp/results/'
samples='clust1 clust2 clust3 clust4 clust5 clust6 clust7 clust8 clust9 clust10 clust11 clust12 clust13 clust14 clust15 clust16 clust17 clust18 clust19 clust20 clust21 clust22 clust23 clust24 clust25 clust26 clust27 clust28 clust29 clust30 clust31 clust32 clust33 clust34 clust35 clust36 clust37 clust38 clust39 clust40 clust41 clust42 clust44 clust45 clust46 clust47 clust48 clust49 clust51 clust52'
echo $samples

for sample in $samples; do
#for file in $path/REPTILE_pred_*.bed; do
    file=REPTILE_pred_${sample}.bed
    echo $file
    cut -f1-3 ${file} | sed 's/chr//g' | awk '{OFS="\t"; print $0,"+"}' > REPTILE_pred_${sample}.mysql

done

