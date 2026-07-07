# Manual NGS Variant Calling Workflow

This file records the manual commands used before converting the project into a reproducible Nextflow pipeline.

## Steps performed

1. Raw FASTQ quality control with FastQC
2. Read trimming with fastp
3. Post-trimming FastQC
4. Reference genome indexing with BWA and SAMtools
5. Read alignment with BWA-MEM
6. BAM sorting, indexing, and flagstat summary with SAMtools
7. Variant calling with bcftools mpileup and bcftools call
8. Variant filtering using QUAL >= 20 and DP >= 5
9. Final report aggregation with MultiQC

## Key outputs

- `results/fastqc_raw/`
- `results/trimmed/`
- `results/fastqc_trimmed/`
- `results/bam/mutant.sorted.bam`
- `results/bam/mutant.flagstat.txt`
- `results/vcf/mutant.raw.vcf.gz`
- `results/vcf/mutant.filtered.vcf.gz`
- `results/multiqc/multiqc_report.html`

## Notes

This manual workflow validates that the tools and dataset work before implementing the automated Nextflow version.
