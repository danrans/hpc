#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#
#$ -l mem_free=4G
#

export OPENBLAS_NUM_THREADS=2
export OMP_NUM_THREADS=2

RTM_GWAS=/share/apps/rtm-gwas/1.4

# your code goes here

$RTM_GWAS/assoc --vcf snpldb.vcf --pheno pheno.txt --covar gsc.evec --alpha 0.01 --rsq 0.95 --out assoc.out
