% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chk-superset.R
\name{chk_superset}
\alias{chk_superset}
\alias{vld_superset}
\title{Check Superset}
\usage{
chk_superset(x, values, x_name = NULL)

vld_superset(x, values)
}
\arguments{
\item{x}{The object to check.}

\item{values}{A vector of the permitted values.}

\item{x_name}{A string of the name of object x or NULL.}
}
\value{
The \code{chk_} function throws an informative error if the test fails or
returns the original object if successful so it can used in pipes.

The \code{vld_} function returns a flag indicating whether the test was met.
}
\description{
Checks if includes all values using

\code{all(values \%in\% x)}
}
\section{Functions}{
\itemize{
\item \code{vld_superset()}: Validates Superset

}}
\examples{
# chk_superset
chk_superset(1:3, 1)
try(chk_superset(1:3, 4))
# vld_superset
vld_superset(1:3, 1)
vld_superset(1:3, 4)
vld_superset(integer(0), integer(0))
}
\seealso{
Other chk_set: 
\code{\link{chk_join}()},
\code{\link{chk_not_subset}()},
\code{\link{chk_orderset}()},
\code{\link{vld_not_subset}()},
\code{\link{vld_orderset}()}
}
\concept{chk_set}
