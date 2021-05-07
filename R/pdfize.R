#!/usr/bin/env Rscript

# Convert xaringan HTML slides to PDF with pagedown::chrome_print()
#
# This used to be part of build.R and would run every time I used
# blogdown::build_site(), but rebuilding PDFs needlessly got tedious and took
# *forever*, so now I use a Makefile target to determine if slide PDFs need to
# be rebuilt

args <- commandArgs(trailingOnly = TRUE)

name_with_ext <- args[1]
name_sans_ext <- tools::file_path_sans_ext(name_with_ext)

pdfize <- function(slide_name) {
  pagedown::chrome_print(here::here(paste0(slide_name, ".html")),
                         output = here::here(paste0(slide_name, ".pdf")),
                         options = list(printBackground = TRUE),
                         wait = 10, timeout = 600)
}

pdfize(name_sans_ext)
