summarize_regions <- function(regions) {
    if (!("length" %in% names(regions))) {
        if (!all(c("start", "end") %in% names(regions))) {
            stop("regions must have start and end columns")
        }
        regions$length <- regions$end - regions$start + 1
    }

    out <- list(
        total_regions = nrow(regions),
        total_length = sum(regions$length),
        mean_length = mean(regions$length),
        median_length = median(regions$length),
        min_length = min(regions$length),
        max_length = max(regions$length)
    )

    if ("chrom" %in% names(regions)) {
        out$by_chrom <- table(regions$chrom)
    }

    out
}
