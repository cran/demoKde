\name{demoKde-package}
\alias{demoKde-package}
\alias{demoKde}
\docType{package}
\title{
  Kernel density estimation demonstration and exploration
}
\description{
  Teaching demonstration code for kernel density estimates.  KDEs are
  computed in native R code directly from the definition.  The
  slight innovation here is to replace the observations by their
  frequencies in a fine partition of the range of the sample.
  Kernels may
  be supplied as a function in a standard form, thus allowing
  alternative kernel functions to be devised and empirically
  investigated.  A wide selection of kernel function is also provided
  with the package.  The canonical reference is B. W. Silverman,
  (1998).  See Refrences.
}
\details{
\tabular{ll}{
Package: \tab demoKde\cr
Type: \tab Package\cr
Version: \tab 0.9-4\cr
Date: \tab 2017-02-02\cr
License: \tab GPL-2\cr
}

}
\author{
Bill Venables

Maintainer: Bill Venables, <Bill.Venables@gmail.com>
}
\references{
  See \url{https://en.wikipedia.org/wiki/Kernel_(statistics)} for details
  of the kernel functions.  See also
  B. W. Silverman, (1998) Density Estimation for Statistics and Data
  Analysis. Taylor & Franis Group, Boca Raton. \doi{10.1201/9781315140919}.  
}
\keyword{ package }
\seealso{
  \code{\link[stats]{density}}
}
\examples{
if(require("graphics")) {
  with(MASS::Boston, {
      Criminality <- log(crim)
      hist(Criminality, freq=FALSE, main="", border="grey", las=1)
      lines(stats::density(Criminality), col="skyblue", lwd=8)
      lines(kde(Criminality))
      lines(kde(Criminality, kernel = kernelUniform), col="red")
      rug(jitter(Criminality), col="blue")
      legend("topright", c("density histogram",
        "KDE gaussian (denstiy)", "KDE gaussian (kde)",
        "KDE rectangular (kde)"), lty = "solid", lwd=c(1,8,1,1),
        col=c("grey", "skyblue", "black", "red"), bty="n")
  })
}
}