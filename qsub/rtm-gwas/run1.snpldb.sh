#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#
#$ -l mem_free=4G
#

export OPENBLAS_NUM_THREADS=4
export OMP_NUM_THREADS=4

RTM_GWAS=/share/apps/rtm-gwas/1.3

# your code goes here

$RTM_GWAS/snpldb --vcf snp.vcf --out snpldb.out
