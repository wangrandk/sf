% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom.R
\name{geos_binary_ops}
\alias{geos_binary_ops}
\alias{st_intersection}
\alias{geos_binary_ops}
\alias{st_difference}
\alias{geos_binary_ops}
\alias{st_sym_difference}
\alias{geos_binary_ops}
\alias{st_snap}
\title{Geometric operations on pairs of simple feature geometry sets}
\usage{
st_intersection(x, y)

st_difference(x, y)

st_sym_difference(x, y)

st_snap(x, y, tolerance)
}
\arguments{
\item{x}{object of class \code{sf}, \code{sfc} or \code{sfg}}

\item{y}{object of class \code{sf}, \code{sfc} or \code{sfg}}

\item{tolerance}{tolerance values used for \code{st_snap}; numeric value or object of class \code{units}; may have tolerance values for each feature in \code{x}}
}
\value{
The intersection, difference or symmetric difference between two sets of geometries.
The returned object has the same class as that of the first argument (\code{x}) with the non-empty geometries resulting from applying the operation to all geometry pairs in \code{x} and \code{y}. In case \code{x} is of class \code{sf}, the matching attributes of the original object(s) are added. The \code{sfc} geometry list-column returned carries an attribute \code{idx}, which is an \code{n}-by-2 matrix with every row the index of the corresponding entries of \code{x} and \code{y}, respectively.
}
\description{
Perform geometric set operations with simple feature geometry collections
}
\details{
A spatial index is built on argument \code{x}; see \url{http://r-spatial.org/r/2017/06/22/spatial-index.html}. The reference for the STR tree algorithm is: Leutenegger, Scott T., Mario A. Lopez, and Jeffrey Edgington. "STR: A simple and efficient algorithm for R-tree packing." Data Engineering, 1997. Proceedings. 13th international conference on. IEEE, 1997. For the pdf, search Google Scholar.
}
\examples{
# A helper function that erases all of y from x:
st_erase = function(x, y) st_difference(x, st_union(st_combine(y)))
}
\seealso{
\link{st_union} for the union of simple features collections; \link{intersect} and \link{setdiff} for the base R set operations.
}
