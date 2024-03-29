% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chk-numeric.R
\name{chk_numeric}
\alias{chk_numeric}
\alias{vld_numeric}
\title{Check Numeric}
\usage{
chk_numeric(x, x_name = NULL)

vld_numeric(x)
}
\arguments{
\item{x}{The object to check.}

\item{x_name}{A string of the name of object x or NULL.}
}
\value{
The \code{chk_} function throws an informative error if the test fails or
returns the original object if successful so it can used in pipes.

The \code{vld_} function returns a flag indicating whether the test was met.
}
\description{
Checks if numeric using

\code{is.numeric(x)}

\strong{Pass}: \code{1}, \code{1:2}, \code{NA_real_}, \code{integer(0)}, \code{matrix(1:3)}.

\strong{Fail}: \code{TRUE}, \code{"1"}, \code{NA}, \code{NULL}.
}
\section{Functions}{
\itemize{
\item \code{vld_numeric()}: Validate Numeric

}}
\examples{
# chk_numeric
chk_numeric(1)
try(chk_numeric("1"))
# vld_numeric
vld_numeric(1)
vld_numeric(1:2)
vld_numeric(NA_real_)
vld_numeric(integer(0))
vld_numeric("1")
vld_numeric(TRUE)
}
\seealso{
Other chk_is: 
\code{\link{chk_array}()},
\code{\link{chk_atomic}()},
\code{\link{chk_data}()},
\code{\link{chk_function}()},
\code{\link{chk_is}()},
\code{\link{chk_matrix}()},
\code{\link{chk_s3_class}()},
\code{\link{chk_s4_class}()},
\code{\link{chk_vector}()},
\code{\link{chk_whole_numeric}()}
}
\concept{chk_is}
