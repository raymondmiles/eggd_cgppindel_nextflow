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
        val tumour
        val normal





    output:

    path "out/cgppindel_output"


    script:
    """
    echo "Value of reference: '$reference'"
    echo "Value of simrep: '$simrep'"
    echo "Value of genes: '$genes'"
    echo "Value of unmatched: '$unmatched'"
    echo "Value of assembly: '$assembly'"
    echo "Value of seqtype: '$seqtype'"
    echo "Value of filter: '$filter'"
    echo "Value of tumour: '$tumour'"
    echo "Value of normal: '$normal'"
    bash nextflow-bin/cgpindel.sh $reference $simrep $genes $unmatched $assembly $seqtype $filter $tumour $normal
    """






}