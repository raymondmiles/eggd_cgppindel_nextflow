nextflow.enable.dsl=2
include {CGPPINDEL} from './modules/CGPINDEL'

// run -> Bare minimum

workflow{
    CGPINDEL( params.reference = "file-Fy4gjFj41zgGjKJ85FYYPX4q", params.simrep = "file-Fz0Q2GQ41zgB8BK7143y65Q1", \
    params.genes = "file-FybyxV841zgB8v1y3fFbFB0G", params.unmatched = "file-Fz8Q0vj41zg6j03fP1vbvfFp", \
    params.assembly = "GRCh38", params.seqtype, \
    params.filter, params.tumour, \
    params.normal
    )


}