
# CancerRegR

A lightweight R package for exploring, annotating, and summarizing cancer-related genomic regions.

## Overview

**CancerRegR** is an educational R package developed as the final project for **CS50's Introduction to Programming with R**.

The package provides three functions for basic genomic-region analysis:

- `find_cpg_islands()` identifies CpG-rich regions in DNA sequences.
- `annotate_genomic_regions()` annotates genomic regions based on coordinate overlap.
- `summarize_regions()` calculates descriptive statistics for genomic regions.

The package is implemented using base R and does not require external R packages.

## Features

- Detects CpG-rich regions in DNA sequences.
- Annotates genomic regions using chromosome and coordinate overlap.
- Calculates descriptive statistics for genomic regions.
- Includes documentation for every exported function.
- Includes tests for the main functionality.
- Uses base R without external package dependencies.

## Project Structure

CancerRegR/
DESCRIPTION
LICENSE
NAMESPACE
R/
find_cpg_islands.R
annotate_genomic_regions.R
summarize_regions.R
man/
find_cpg_islands.Rd
annotate_genomic_regions.Rd
summarize_regions.Rd
tests/
test_find_cpg_islands.R
test_annotate_genomic_regions.R
test_summarize_regions.R

## Installation

Clone the repository:
git clone https://github.com/arefehsaiedi/CancerRegR.git
cd CancerRegR
The package can be installed from the project directory using R:
install.packages("remotes")
remotes::install_local()
Alternatively, the individual functions can be loaded directly:
source("R/find_cpg_islands.R")
source("R/annotate_genomic_regions.R")
source("R/summarize_regions.R")

## Usage

Find CpG Islands
source("R/find_cpg_islands.R")

sequence <- "ATCGCGATCGTCGCGACGCG"

find_cpg_islands(
  sequence,
  min_gap = 50,
  min_length = 1
)
The function returns a data frame containing the island ID, start position, end position, length, and CpG count.
Annotate Genomic Regions
source("R/annotate_genomic_regions.R")

regions <- data.frame(
  chrom = c("chr1", "chr1"),
  start = c(100, 500),
  end = c(300, 700)
)

annotation <- data.frame(
  chrom = c("chr1", "chr1"),
  start = c(50, 450),
  end = c(250, 650),
  gene = c("GeneA", "GeneB")
)

annotate_genomic_regions(regions, annotation)
The function returns the input regions with an additional annotation column.
Summarize Genomic Regions
source("R/summarize_regions.R")

regions <- data.frame(
  chrom = c("chr1", "chr1", "chr2"),
  start = c(1, 10, 20),
  end = c(5, 15, 25)
)

summarize_regions(regions)
The function returns summary statistics including the number of regions, total length, mean length, median length, minimum length, and maximum length.

## Testing

The project includes one test file for each main function.
From the project directory, run:
R --vanilla < tests/test_find_cpg_islands.R
R --vanilla < tests/test_annotate_genomic_regions.R
R --vanilla < tests/test_summarize_regions.R
The tests use small example data sets to verify the expected structure and values of the results.

## Documentation

Documentation for each function is available in the man/ directory.
In R, documentation can be viewed with:
help(find_cpg_islands)
help(annotate_genomic_regions)
help(summarize_regions)

## Author

Created by Arefeh Saiedi.
* GitHub: @arefehsaiedi⁠
* Repository: CancerRegR⁠

## Course

Final project for CS50’s Introduction to Programming with R by Harvard University.

## License

This project is distributed under the MIT License. See the LICENSE⁠ file for details.
