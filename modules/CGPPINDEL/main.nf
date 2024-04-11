process CGPPINDEL {

    debug true

    input:

        val docker_image_name
        val reference
        val simrep
        val genes
        val unmatched
        val assembly
        val seqtype
        val filter
        val bam_pairs_tumour
        val bam_pairs_normal





    output:

    path ""


    script:
    """
    echo "Value of reference: $reference"
    echo "Value of simrep: $simrep"
    echo "Value of genes: '$genes'"
    echo "Value of unmatched: '$unmatched'"
    echo "Value of assembly: '$assembly'"
    echo "Value of seqtype: '$seqtype'"
    echo "Value of filter: '$filter'"
    echo "Value of tumour: '$bam_pairs_tumour'"
    echo "Value of normal: '$bam_pairs_normal'"
    bash nextflow-bin/cgppindel.sh $reference $simrep $genes $unmatched $assembly $seqtype $filter $bam_pairs_tumour $bam_pairs_normal
    """






}