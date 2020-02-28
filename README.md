# GSoc_2020_RNA-Seq_pipeline_test
This is the selection test response for the GSoc 2020 project on Creating a new pipeline for long-read RNA-seq using StringTie v2 submitted by Henrick Aduda 

## What I did 
1. Installed stringtie v2, ballgown and tablemaker on my computer.
2. Ensured stringtie was working by using the following commands:

``` bash 
# to check the stringtie manual page and see the order of options and parameters when using the command
./stringtie
#I then ran stringTie using the long read mode on the testdata given on the stringTie github repo.
./stringtie -L -o long_reads.out.gtf test_data/long_reads.bam 
```
3. Downloaded the nanopore mouse RNA-seq datasets using wget on the linux terminal: 

```bash 
#Downloading mouse RNA-seq datasets.
 wget http://www.genoscope.cns.fr/externe/ONT_mouse_RNA/data/transcriptome/RNA_nanopore.brain.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam
 wget http://www.genoscope.cns.fr/externe/ONT_mouse_RNA/data/transcriptome/RNA_nanopore.liver.C1R1_mapping_E94_minimap2_primary_no_read_less_than_80QC.bam
```

4. Used StringTie v2 long-read mode to generate a GTF file for each of these samples. Please find the commands used on **stringtie_tablemaker_commands.sh_ bash script**
5. Ran Tablemaker on the two samples above using tablemaker. Please find the commands used on the **stringtie_tablemaker_commands.sh bash script**
6. I imported the output of Tablemaker into R using Ballgown. Please find the Rscript with ballgown commands on **ballgown_commands.R**

7. Used texpr function to generate a transcript matrix for both samples.

The first 1000 lines of both GTF files generated using StringTie2 can be found on **long_reads_brain_C1_1000_gtf.txt** and **long_reads_liver_C1_1000_gtf.txt**

The first 1000 lines of the FPKM matrix produced by Ballgown, saved as a csv can be found on: **transcript_fpkm_brain_C1_1000.csv** and **transcript_fpkm_liver_C1_1000.csv**
