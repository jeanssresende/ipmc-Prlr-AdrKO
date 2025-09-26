#!/bin/bash
# ------------------------------------------------------------------------
# Quality Control of Raw Reads - FastQC & MultiQC
# ------------------------------------------------------------------------

# Create output directories if they don't exist
mkdir -p quality_control/before_trimming_reads/fastqc
mkdir -p quality_control/before_trimming_reads/multiqc

# Run FastQC on all FASTQ.gz files
fastqc ../Data/fastq\ files/fastq\ files/*.fastq.gz \
  -o quality_control/before_trimming_reads/fastqc

# Aggregate FastQC reports with MultiQC
multiqc quality_control/before_trimming_reads/fastqc \
  -o quality_control/before_trimming_reads/multiqc
# ------------------------------------------------------------------------