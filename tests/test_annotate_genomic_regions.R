source("../R/annotate_genomic_regions.R")

regions <- data.frame(
  chrom = "chr1",
  start = c(100, 500),
  end = c(300, 700)
)

annot <- data.frame(
  chrom = "chr1",
  start = c(50, 450),
  end = c(250, 650),
  gene = c("GeneA", "GeneB")
)

x <- annotate_genomic_regions(regions, annot)

stopifnot("annotation" %in% names(x))
stopifnot(x$annotation[1] == "GeneA")
stopifnot(x$annotation[2] == "GeneB")
