annotate_genomic_regions <- function(regions, annotation) {
    need <- c("chrom", "start", "end")
    if (!all(need %in% names(regions))) {
        stop("regions must have chrom, start, and end columns")
    }
    if (!all(need %in% names(annotation))) {
        stop("annotation must have chrom, start, and end columns")
    }

    if (!("gene" %in% names(annotation))) {
        annotation$gene <- paste0("Gene", seq_len(nrow(annotation)))
    }

    regions$annotation <- NA_character_

    for (i in seq_len(nrow(regions))) {
        hits <- annotation[
            annotation$chrom == regions$chrom[i] &
            annotation$start <= regions$end[i] &
            annotation$end >= regions$start[i],

            drop = FALSE
        ]

        if (nrow(hits) > 0) {
            regions$annotation[i] <- paste(hits$gene, collapse = "; ")
        }
    }

    regions

}

