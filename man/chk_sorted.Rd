% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chk-sorted.R
\name{chk_sorted}
\alias{chk_sorted}
\alias{vld_sorted}
\title{Check Sorted}
\usage{
chk_sorted(x, x_name = NULL)

vld_sorted(x)
}
\arguments{
\item{x}{The object to check.}

\item{x_name}{A string of the name of object x or NULL.}
}
\value{
The \code{chk_} function throws an informative error if the test fails.

The \code{vld_} function returns a flag indicating whether the test was met.
}
\description{
Checks if is sorted using

\code{is.unsorted(x)}
}
\section{Functions}{
\itemize{
\item \code{vld_sorted}: Validate Sorted
}}

\examples{
# chk_sorted
chk_sorted(1:2)
try(chk_sorted(2:1))
# vld_sorted
vld_sorted(1:2)
vld_sorted(2:1)
}
\seealso{
Other chk_misc: 
\code{\link{chk_match}()},
\code{\link{chk_named}()},
\code{\link{chk_not_any_na}()},
\code{\link{chk_not_empty}()},
\code{\link{chk_unique}()}
}
\concept{chk_misc}
