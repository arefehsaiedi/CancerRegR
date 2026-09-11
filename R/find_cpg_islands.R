find_cpg_islands <- function(seq, min_gap = 100, min_length = 200) {
    seq <- toupper(seq)
    pos <- gregexpr("CG", seq) [[1]]

    if (length(pos) == 1 && pos[1] == -1) {
        return(data.frame(
            island_id = integer(),
            start = integer(),
            end = integer(),
            length = integer(),
            cpg_count = integer()
        ))
    }

    clusters <- list()
    current <- pos[1]

    if (length(pos) > 1) {
        for (i in 2:length(pos)) {
            gap <- pos[i] - (pos[i - 1] + 1)
            if (gap <= min_gap) {
                current <- c(current, pos[i])
            }   else {
                clusters[[length(clusters) + 1]] <- current
                current <- pos[i]

            }
        }

    }

    clusters[[length(clusters) + 1]] <- current

    result <- data.frame(
        island_id = seq_along(clusters),
        start = sapply(clusters, min),
        end = sapply(clusters, max) + 1,
        stringsAsFactors = FALSE
    )

    result$length <- result$end - result$start + 1
    result$cpg_count <- sapply(clusters, length)

    result <- result[result$length >= min_length, ]
    rownames(result) <- NULL
    result
}
