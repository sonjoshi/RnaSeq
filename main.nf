#!/usr/bin/env nextflow
//nextflow.enable.dsl=2

reads = file(params.RNASeq_input)
reads_ch = Channel.fromPath(reads)


//1. Quality control using FastQC
	
process checkQuality {

    input:
    path reads

	output:
	path qc_result into mqc_ch
	
	script:
    """
    mkdir qc_result
    fastqc -o qc_result $reads
    """
    
    
}

//2. MultiQC to aggregate the FastQC reports
process aggregateQC {

	input:
	path mqc_ch
	
	output:
	path multi_out
	
	script:
	"""
	mkdir multi_out
	multiqc  -o multi_out $mqc_ch
	"""
}


//mqc_ch = Channel.fromPath('$qc_result/*.zip')





//3. Trim the reads (based on what report of MultiQC)
// use cutadapt or trimmomatic

//4. Mapping using STAR (RNASTAR)
//	Output BAM file
	
//5. MultiQC to aggregate STAR logs


// 6. Counting the number of reads per annotated gene - featureCounts


//DESeq2

// Annotate diff expressed genes

//PCA
//Heatmap
//Visualization - volcano plot

//GO analysis







