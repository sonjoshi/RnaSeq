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

