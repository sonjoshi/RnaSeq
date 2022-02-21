#!/usr/bin/env nextflow


reads_ch = Channel.fromPath(params.input_data)

//1. Quality control using FastQC
	
process checkQuality {

    input:
    path x from reads_ch

	output:
	path qc_result into mqc_ch
	
	script:
    """
    mkdir qc_result
    fastqc -o qc_result $x
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











