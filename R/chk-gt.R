#' Check Greater Than
#'
#' @description
#' Checks if all non-missing values are greater than value using
#'
#' `all(x[!is.na(x)] > value)`
#'
#' @inheritParams params
#' @return
#' The `chk_` function throws an informative error if the test fails.
#'
#' The `vld_` function returns a flag indicating whether the test was met.
#'
#' @family chk_ranges
#' @export
#'
#' @examples
#'
#' # chk_gt
#' chk_gt(0.1)
#' try(chk_gt(c(0.1, -0.2)))
chk_gt <- function(x, value = 0, x_name = NULL) {
  if (vld_gt(x, value)) {
    return(invisible())
  }
  if (is.null(x_name)) x_name <- deparse_backtick_chk(substitute(x))
  if (length(x) == 1L) {
    abort_chk(x_name, " must be greater than ", cc(value), ", not ", cc(x))
  }
  abort_chk(x_name, " must have values greater than ", cc(value))
}

#' @describeIn chk_gt Validate Greater Than
#'
#' @export
#'
#' @examples
#'
#' # vld_gt
#' vld_gt(numeric(0))
#' vld_gt(0)
#' vld_gt(0.1)
#' vld_gt(c(0.1, 0.2, NA))
#' vld_gt(c(0.1, -0.2))
#' vld_gt(c(-0.1, 0.2), value = -1)
#' vld_gt("b", value = "a")
vld_gt <- function(x, value = 0) all(x[!is.na(x)] > value)