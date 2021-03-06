% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eval.R
\name{eval_dist}
\alias{eval_dist}
\alias{eval_dist_}
\alias{eval_dist_.sf}
\alias{eval_dist_.data.table}
\title{Evaluate distance-to}
\usage{
eval_dist(x, layer, direction = NULL, coords = NULL, crs = NULL)

eval_dist_(x, layer, direction = NULL, coords = NULL, crs = NULL)

\method{eval_dist_}{sf}(x, layer, direction = NULL, coords = NULL,
  crs = NULL)

\method{eval_dist_}{data.table}(x, layer, direction = NULL,
  coords = NULL, crs = NULL)
}
\arguments{
\item{x}{data.table or sf points.}

\item{layer}{object of class sfg, sfc or sf.}

\item{direction}{one of 'positive', 'neutral', 'negative'. See Details.}

\item{coords}{columns in \code{x} indicating names of coordinate columns of focal point. Only used when x is a \code{data.table}. Expects length = 2 e.g.: c('X', 'Y').}

\item{crs}{coordinate reference system of the coordinates in x, if x is a data.table. Either an integer with the EPSG code, or character with proj4string (see the 'crs' argument in \link[sf]{st_sf}).}
}
\value{
Vector of distances between x and the nearest feature in layer.

Note attributes are returned like by \code{eval_pt} and \code{eval_buffer}. The \code{type} attribute for distance to a feature (layer) is "real" and the \code{direction} is left for the user to provide.
}
\description{
Evaluates locations in x by measuring the distance to the nearest feature in layer.
}
\details{
To avoid the large overhead of creating distance to rasters for small/medium number of sample points, this vector-based distance to determines the nearest feature (layer) to each x then calculates the distance between each pair.
}
\examples{
# sf objects
data(water)
data(points)

points$distWater <- eval_dist(points, water, direction = 'negative')

# data.table objects
library(data.table)

data(DT)
alloc.col(DT)

DT[, distWater := eval_dist(.SD, water, coords = c('X', 'Y'), direction = 'positive', crs = sf::st_crs(water))]
}
\seealso{
Other eval: \code{\link{eval_buffer}},
  \code{\link{eval_pt}}
}
\concept{eval}
