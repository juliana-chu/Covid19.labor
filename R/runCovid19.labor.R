#' Launch Shiny App for Covid19.labor
#'
#' @return No return value.
#'
#' @examples
#' \dontrun{
#' runCovid19.labor()
#' }
#'
#' @author Juliana Chu, \email{juliana.chu@mail.utoronto.ca}
#'
#' @references
#' Winston Chang, Joe Cheng, JJ Allaire, Yihui Xie and Jonathan McPherson
#' (2020). shiny: Web Application Framework for R. R package version 1.5.0.
#' https://CRAN.R-project.org/package=shiny
#'
#' @export
#' @importFrom shiny runApp
runCovid19.labor <- function() {
  appDir <- system.file("shiny-script",package = "Covid19.labor")
  shiny::runApp(appDir, display.mode = "normal")
  return()
  }

