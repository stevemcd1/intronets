#' Load chapter datasets into the workspace
#'
#' @param filename Name of the .RData file in extdata
#' @export
load_nets <- function(filename) {
  filepath <- system.file("extdata", filename, package = "intronets")
  if (filepath == "") {
    stop("File not found: ", filename)
  }

  load(filepath, envir = .GlobalEnv)
}

#' List available network datasets in the package
#'
#' @export
list_nets <- function() {
  list.files(
    system.file("extdata", package = "intronets"),
    pattern = "\\.(rda|RData)$",  # match both .rda and .RData
    full.names = FALSE
  )
}

