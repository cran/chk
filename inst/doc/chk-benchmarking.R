## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(chk)
library(microbenchmark)

## ------------------------------------------------------------------------

fun_checking <- function(x) {
  chk_flag(x)
  NULL
}

.fun_checking <- function(x) {
  NULL
}

fun_checking_arg <- function(x, chk = TRUE) {
  if(chk) {
    chk_flag(x)
  }
  NULL
}

## ------------------------------------------------------------------------
times <- summary(microbenchmark(
  fun_checking(TRUE),
  .fun_checking(TRUE),
  fun_checking_arg(TRUE, chk = TRUE),
  fun_checking_arg(TRUE, chk = FALSE),
  unit = "us", times = 10000L
))[c("expr", "median")]
print(times)

## ------------------------------------------------------------------------
true <- TRUE
false <- FALSE
one <- 1
oneL <- 1L
string <- "1"
date <- as.Date(1, origin = as.Date("1970-01-01"))
datetime <- as.POSIXct(1, origin = as.Date("1970-01-01"))
null <- NULL
named <- c("1" = 1)
fun <- function() NULL
data <- data.frame(one = one)

## ------------------------------------------------------------------------
summary(microbenchmark(
  chk_true(true),
  chk_false(false),
  chk_flag(true),
  chk_lgl(true),
  chk_number(oneL),
  chk_number(one),
  chk_whole_number(oneL),
  chk_whole_number(one),
  chk_string(string),
  chk_date(date),
  chk_datetime(datetime),
  chk_whole_numeric(oneL),
  chk_whole_numeric(one),
  chk_not_any_na(one),
  chk_unique(one),
  chk_unique(data),
  chk_unique(data, incomparables = NA),
  chk_null(null),
  chk_not_null(one),
  chk_named(named),
  chk_unused(),
  chk_used(one),
  chk_function(fun),
  chk_s3_class(one, "numeric"),
  chk_identical(one, one),
  chk_equal(one, one),
  chk_equivalent(one, one),
  chk_lt(one, 2),
  chk_lte(one, one),
  chk_gt(one, 0),
  chk_gte(one, one),
  chk_range(one),
  chk_subset(one, one),
  chk_superset(one, one),
  chk_match(string),
  chk_all(true, chk_true),
  chkor(),
  chkor(chk_number(one)),
  chkor(chk_number(one), chk_proportion(one)),
  unit = "us", times = 10000L
))[c("expr", "median")]

