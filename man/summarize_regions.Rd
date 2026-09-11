\name{summarize_regions}
\alias{summarize_regions}
\title{Summarize Genomic Regions}
\description{
    calculates basic summary statistics for a set of genomic regions.
}
\usage{
    summarize_regions(regions)
}
\arguments{
    \item{regions}{A data frame with columns \code{start}, and \code{end} columns, or a \code{length} column.}
}
\value{
    A list containing summary statistics such as total number of regions, total length, and length statistics.
}
\examples{
    regions <- data.frame(start = c(1, 10, 20), end = c(5, 15, 25))
    summarize_regions(regions)
}
