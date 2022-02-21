# RnaSeq
RnaSeq workflow using Nextflow and Docker containers. This is a work in progress.
Currently it runs the fastqc and multiqc tools.

**Installation and usage:**

This pipeline requires both nextflow and Docker installed on your machine.


**To test the pipeline, clone the pipeline using**
```
$ git clone https://github.com/sonjoshi/RnaSeq.git
```

Then, test it with the included test data in the RnsSeq directory and giving the command

```
cd RnaSeq
nextflow run main.nf
```

To test using your own .fastq data files, give them as input like so
```
nextflow run main.nf --input_data="$PWD/SampleData1/*.fastq"
```
You will find the outputs of the fastqc and multiqc processes in the work directory.
