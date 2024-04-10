nextflow.enable.dsl=2
include {CGPPINDEL} from './modules/CGPINDEL'

// run -> Bare minimum

workflow{
    CGPINDEL( 
    params.reference, params.simrep, params.genes, \
    params.unmatched, params.assembly, params.seqtype,  \
    params.filter, params.tumour,params.normal)          
    // params.reference = "file-Fy4gjFj41zgGjKJ85FYYPX4q", params.simrep = "file-Fz0Q2GQ41zgB8BK7143y65Q1", \
    // params.genes = "file-FybyxV841zgB8v1y3fFbFB0G", params.unmatched = "file-Fz8Q0vj41zg6j03fP1vbvfFp", \
    // params.assembly = "GRCh38", params.seqtype="TG", \
    // params.filter = "file-Fz8xvQj41zgGg10ZJzx8Qz53", params.tumour, \
    // params.normal = file-Fy9BXxQ40vjGfxP46Jb78Xf1
    


}