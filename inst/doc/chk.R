## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----error=TRUE---------------------------------------------------------------
library(chk)
y <- TRUE
chk_flag(y)
y <- NA
chk_flag(y)

## ----error=TRUE---------------------------------------------------------------
vld_flag(TRUE)
vld_flag(NA)

## ----error=TRUE---------------------------------------------------------------
if (!vld_flag(NA)) abort_chk("`NA` is not TRUE or FALSE!!")

## ----error = TRUE-------------------------------------------------------------
fun1 <- function(x) {
  chk_whole_number(x)
  # use x
}

fun1(1)
y <- 1.3
fun1(x = y)

## ----error = TRUE-------------------------------------------------------------
x <- NA
chk_flag(x, x_name = "`zzz`")

## ----error=TRUE---------------------------------------------------------------
abort_chk("There %r %n problem director%y%s.", n = 1)
abort_chk("there %r %n ", "problem director%y%s", n = 2)

