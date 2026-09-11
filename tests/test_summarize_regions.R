source("../R/summarize_regions.R")
regions <- data.frame(
  start = c(1, 10, 20)
  end = c(5, 15, 25)
)
x <- summarize_regions(regions)

stopifnot(x$total_regions == 3)
stopifnot(x$total_length == 17)
stopifnot(x$mean_length == mean(c(5, 6, 6)))
