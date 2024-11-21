.DEFAULT_RISK_THRESHOLD <- 0
.DEFUALT_RISK_SCORE_SEP <- "#"

#' @export
install_packages <- function(
    risk_threshold = .DEFAULT_RISK_THRESHOLD,
    risk_score_sep = .DEFUALT_RISK_SCORE_SEP,
    ...) {
  args <- list(...)
  all_packages <- available.packages(type = args$type)
  risk_values <- strsplit(
    x = all_packages[, "Version"],
    split = risk_score_sep,
    fixed = TRUE
  ) |>
    lapply(function(x) x[2]) |>
    unlist() |>
    as.numeric()
  args$available <- all_packages[
    isTRUE(risk_values <= risk_values), ,
    drop = FALSE
  ]
  do.call(install.packages, args)
}
