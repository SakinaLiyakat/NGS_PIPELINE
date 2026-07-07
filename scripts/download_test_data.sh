#!/usr/bin/env bash
set -euo pipefail

mkdir -p data/raw data/reference data/annotation

wget -O data/raw/mutant_R1.fastq "https://zenodo.org/records/582600/files/mutant_R1.fastq?download=1"
wget -O data/raw/mutant_R2.fastq "https://zenodo.org/records/582600/files/mutant_R2.fastq?download=1"

wget -O data/reference/wildtype.fna "https://zenodo.org/records/582600/files/wildtype.fna?download=1"
wget -O data/annotation/wildtype.gff "https://zenodo.org/records/582600/files/wildtype.gff?download=1"
wget -O data/annotation/wildtype.gbk "https://zenodo.org/records/582600/files/wildtype.gbk?download=1"

gzip -f data/raw/mutant_R1.fastq
gzip -f data/raw/mutant_R2.fastq

echo "Dataset downloaded successfully."
