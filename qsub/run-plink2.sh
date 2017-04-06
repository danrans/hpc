#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#
#$ -l mem_free=4G
#

PLINK=/share/apps/plink/1.90b3.35/plink

# your code goes here

$PLINK --help


# LD block

## $PLINK --file prefix --blocks no-pheno-req --blocks-max-kb 200 --blocks-min-maf 0.01
