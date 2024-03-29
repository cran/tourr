% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tour-radial.r
\name{radial_tour}
\alias{radial_tour}
\title{A radial tour path.}
\usage{
radial_tour(start, mvar = 1, ...)
}
\arguments{
\item{start}{initial projection matrix}

\item{mvar}{variable(s) chosen to rotate out}

\item{...}{additional arguments for drawing}
}
\description{
The radial tour rotates a chosen variable axis out of the current
projection.
}
\details{
Usually, you will not call this function directly, but will pass it to
a method that works with tour paths like \code{\link{animate}},
\code{\link{save_history}} or \code{\link{render}}.
}
\examples{
animate_xy(flea[, 1:6], radial_tour(basis_random(6, 2), mvar = 4))
animate_xy(flea[, 1:6], radial_tour(basis_random(6, 2), mvar = c(3,4)))
animate_dist(flea[, 1:6], radial_tour(basis_random(6, 1), mvar = 4))
animate_scatmat(flea[, 1:6], radial_tour(basis_random(6, 3), mvar = 4))
}
