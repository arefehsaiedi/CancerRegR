\name{annotate_genomic_regions}
\alias{annotate_genomic_regions}
\title{Annotate Genomic Regions}
\description{
    Adds simple annotation information to genomic regions based on overlap.
}
\usage{
    annotate_genomic_regions(regions, annotation)
}
\arguments{
    \item{regions}{A data frame with columns \code{chrom}, \code{start}, and \code{end}.}
    \item{annotation}{A data frame with columns \code{chrom}, \code{start}, and \code{end}, plus an optional \code{gene} column.}
}
\value{
    A data frame like \code{regions} with an added \code{annotation} column.
}
\examples{
    regions <- data.frame(chrom = "chr1", start = c(100, 500), end = c(300, 700))
    annotation <- data.frame(chrom = "chr1", start = c(50, 450), end = c(250, 650), gene = c("GeneA", "GeneB"))
    annotate_genomic_regions(regions, annotation)
}
