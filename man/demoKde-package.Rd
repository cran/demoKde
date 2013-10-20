\name{demoKde-package}
\alias{demoKde-package}
\alias{demoKde}
\docType{package}
\title{
  KDE Demonstration
}
\description{
  Teaching demonstration code for kernel density estimates
}
\details{
\tabular{ll}{
Package: \tab demoKde\cr
Type: \tab Package\cr
Version: \tab 0.9-1\cr
Date: \tab 2013-10-20\cr
License: \tab GPL-2\cr
}

}
\author{
Bill Venables

Maintainer: Bill Venables, <Bill.Venables@gmail.com>
}
\references{
  See \url{http://en.wikipedia.org/wiki/Kernel_(statistics)} for details
  fo the kernel functions.
}
\keyword{ package }
\seealso{
  \code{\link[stats]{density}}
}
\examples{
if(require("graphics")) {
  with(MASS::geyser, {
      hist(waiting, freq=FALSE, main="", border="grey", las=1)
      lines(stats::density(waiting), col="skyblue", lwd=8)
      lines(kde(waiting))
      lines(kde(waiting, kernel = kernelUniform), col="red")
      rug(jitter(waiting), col="blue")
  })
}
}