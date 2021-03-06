#' Write .dat data file for Mplus. Note variable names are printed to the
#' console.
#'
#' @param d Data frame to  write out.
#' @param fileName Name of the file to be written out. Note that the extension
#' is added automatically, and only the file name should be supplied.
#' @param dir Directory to write the file. Defaults to the current working
#' directory.
#' @param na.string String to fill in missing values. Defaults to "999"
#' @param ... Additional arguments passed to \code{\link[utils]{write.table}}
#'
#' @return Mplus .dat file written to the current working directory, with
#'  variable names printed to the console (for easy copy and paste into a .inp
#'  Mplus file)
#' @export

write.mplus <- function(d, fileName, dir = getwd(), na.string = "999", ...) {
	cat(names(d))
	write.table(d, file = paste0(dir, "/", fileName, ".dat"),
		row.names = FALSE, col.names = FALSE, sep = "\t",
		na = as.character(na.string), ...)
}
