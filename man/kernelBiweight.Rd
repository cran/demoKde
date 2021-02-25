\name{kernelBiweight}
\alias{kernelBiweight}
\alias{kernelCosine}
\alias{kernelEpanechnikov}
\alias{kernelGaussian}
\alias{kernelLogistic}
\alias{kernelOptCosine}
\alias{kernelRectangular}
\alias{kernelSquaredCosine}
\alias{kernelTriangular}
\alias{kernelTricube}
\alias{kernelTriweight}
\alias{kernelUniform}
\title{
  Kernel functions for use with kde
}
\description{
  These functions, all with idenical argument lists, provide kernel
  functions for use with the KDE function.  
}
\usage{
kernelBiweight(x, mean = 0, sd = 1)
kernelCosine(x, mean = 0, sd = 1)
kernelEpanechnikov(x, mean = 0, sd = 1)
kernelGaussian(x, mean = 0, sd = 1)
kernelLogistic(x, mean = 0, sd = 1)
kernelOptCosine(x, mean = 0, sd = 1)
kernelRectangular(x, mean = 0, sd = 1)
kernelSquaredCosine(x, mean = 0, sd = 1)
kernelTriangular(x, mean = 0, sd = 1)
kernelTricube(x, mean = 0, sd = 1)
kernelTriweight(x, mean = 0, sd = 1)
kernelUniform(x, mean = 0, sd = 1)
}
\arguments{
  \item{x}{
    Values for which the kernel function is to be evaluated.
  }
  \item{mean}{
    Mean (or location parameter) of the kernel function.
  }
  \item{sd}{
    Standard deviation (or scale paramenter) of the kernel function.
  }
}
\details{
  These are all continuous, symmetric probability density functions
  parametrised by a location and scale parameter, here taken to be the
  mean and standard deviation respectively.  Most have finite support,
  he two exceptions here being \code{kernelGaussian} and
  \code{kernelLogistic}, which have unbounded support.

  The functions provided cover all those listed in
  \url{https://en.wikipedia.org/wiki/Kernel_(statistics)}, with obvious
  name correspondences.  Of the additional ones, \code{kernelSquaredCosine}
  appears to be thus far new, and \code{kernelOptCosine} is explained in
  the help file for \code{stats::density}.

  The functions \code{kernelUniform} and \code{kernelRectangular} are
  identical, and provided for convenience.

  The functions are vectorized with respect to all three parameters.
}
\value{
  The evaluated kernel for each supplied \code{x} value.
}
\references{
  See \href{https://en.wikipedia.org/wiki/Kernel_(statistics)}{this web
    site}, primarily.
}
\author{
  Bill Venables
}

\seealso{
  \code{\link{kde}}, \code{\link[stats]{density}}
}
\examples{
if(require("graphics")) {
  curve(kernelGaussian, xlim = c(-4.5, 4.5), ylim = c(0, 0.45))
  curve(kernelLogistic, add = TRUE, col = "red")
  curve(kernelUniform, add = TRUE, col = "blue", lwd=2, n = 5000)
}
}
\keyword{distribution}
\keyword{dplot}
