\name{find_cpg_islands}
\alias{find_cpg_islands}
\title{Find CpG Islands in a DNA Sequence}
\description{
    Finds CpG-rich regions in a DNA Sequence and returns their positions.
}
\usage{
    find_cpg_islands(seq, min_gap = 100, min_length = 200)
}
\arguments{
    \item{seq}{A character string containing a DNA Sequence.}
    \item{min_gap}{The largest gap allowed between CpG sites in the same island.}
    \item{min_length}{The minimum length required for an island to be returned.}
}
\value{
    A data frame with columns for island ID, start, end, length, and CpG count.
}
\examples{
    seq <- "ATCGCGATCGTCGCGACGCG"
    find_cpg_islands(seq, min_gap = 50, min_length = 1)
}
