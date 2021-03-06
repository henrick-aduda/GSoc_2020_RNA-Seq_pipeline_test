#!/usr/bin/env

#stringtie commands used as below. The mouse RNA-Seq data set was saved on GSoc_2020_dataset
./stringtie -L -o long_reads_brain_C1.out.gtf GSoc_2020_dataset/RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam
./stringtie -L -o long_reads_liver_C1.out.gtf GSoc_2020_dataset/RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam

#tablemaker commands used as below. My output for stringtie were saved on stringtie_gtf_files_GSoc_20220
./tablemaker -p 4 -v -W -G stringtie_gtf_files_GSoc_2020/long_reads_brain_C1.out.gtf -o long_read_brain_tablemaker_output GSoc_2020_dataset/RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam --library-type fr-firststrand
./tablemaker -p 4 -v -W -G stringtie_gtf_files_GSoc_2020/long_reads_liver_C1.out.gtf -o long_read_liver_tablemaker_output GSoc_2020_dataset/RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam --library-type fr-firststrand

#Thats all for now!!
