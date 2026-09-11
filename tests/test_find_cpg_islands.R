source("../R/find_cpg_islands.R")

x <- find_cpg_islands(
  "ATCGCGATCGTCGCGACGCG",
  min_gap = 50,
  min_length = 1
)

stopifnot(is.data.frame(x))
stopifnot(nrow(x) == 1)
stopifnot(all(c("island_id", "start", "end", "length", "cpg_count") %in% names(x)))

no_cpg <- find_cpg_islands("ATATATAT")
stopifnot(nrow(no_cpg) == 0)


