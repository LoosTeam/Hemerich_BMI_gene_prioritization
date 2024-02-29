#!/bin/bash

#### Script to run TWAS on BMI GWAS
#### FUSION available in: https://github.com/gusevlab/fusion_twas
#### Data available in: http://gusevlab.org/projects/fusion/

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 9.23e-06 --PANELN panelN_cmc.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/CMC.BRAIN.RNASEQ.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_cmc_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_amygdala.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Amygdala.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Amygdala_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_anteriorcingulatecortex.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Anterior_cingulate_cortex_BA24.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Anterior_cingulate_cortex_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_caudatebasalganglia.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Caudate_basal_ganglia.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Caudate_basal_ganglia_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_cerebellarhemisphere.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Cerebellar_Hemisphere.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Cerebellar_Hemisphere_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_cerebellum.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Cerebellum.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Cerebellum_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_cortex.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Cortex.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Cortex_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_frontalcortex.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Frontal_Cortex_BA9.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Frontal_Cortex_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_hippocampus.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Hippocampus.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Hippocampus_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_hypothalamus.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Hypothalamus.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Hypothalamus_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_nucleusaccumbensbasalganglia.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Nucleus_accumbens_basal_ganglia.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Nucleus_accumbens_basal_ganglia_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_putamenbasalganglia.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Putamen_basal_ganglia.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Putamen_basal_ganglia_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_spinalcordcervical.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Spinal_cord_cervical_c-1.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Spinal_cord_cervical_$i.dat; done

for i in {1..22}; do Rscript FUSION.assoc_test.R \
--coloc_P 1.25e-06 --PANELN panelN_substantianigra.txt --GWASN 683705 \
--sumstats ./ldsc/bmi_yengo_ldsc.sumstats \
--weights ./WEIGHTS/Brain_Substantia_nigra.P01.pos \
--weights_dir ./WEIGHTS/ \
--ref_ld_chr ./LDREF/1000G.EUR. \
--chr $i \
--out ./results_yengo/coloc_yengo_Brain_Substantia_nigra_$i.dat; done
