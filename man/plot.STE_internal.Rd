% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3methods.R
\name{plot.STE_internal}
\alias{plot.STE_internal}
\title{Plot method for objects of class "STE_internal"}
\usage{
\method{plot}{STE_internal}(
  x,
  use_scb = FALSE,
  header = c("Source", "Subgroup", ifelse(use_scb, "Estimate [95\% SCB]",
    "Estimate [95\% CI]")),
  source_names,
  subgroup_names,
  ...
)
}
\arguments{
\item{x}{Object of class "STE_internal".}

\item{use_scb}{logical scalar specifying whether the intervals in the forest plot should be simultaneous confidence bands (rather than confidence intervals). The default is \code{FALSE}.}

\item{header}{optional, vector of character strings of length 3, headers for the source, effect modifier subgroup and the estimates in the forest plot.}

\item{source_names}{optional, vector of character strings specifying the names of the sources. Defaults are the values in \code{S} provided by the user to \code{\link{STE_internal}}.}

\item{subgroup_names}{optional, vector of character strings specifying the names of the effect modifier subgroups. Defaults are the values in \code{EM} provided by the user to \code{\link{STE_internal}}.}

\item{...}{Other arguments, which are passed to \code{\link[metafor]{forest.rma}}.}
}
\value{
No value is returned.
}
\description{
This function creates forest plots of objects of class "STE_internal".
}
\details{
Note that users may need to custom set the argument \code{ilab.xpos} which specifies the position (along the x-axis) of the effect modifier header and subgroup labels. See \code{\link[metafor]{forest.rma}} for further details.
}
\examples{
\donttest{
si <- STE_internal(
  X = dat_multisource[, 2:10],
  Y = dat_multisource$Y,
  EM = dat_multisource$EM,
  S = dat_multisource$S,
  A = dat_multisource$A,
  cross_fitting = FALSE,
  source_model = "MN.nnet",
  source_model_args = list(),
  treatment_model_type = "separate",
  treatment_model_args = list(
    family = binomial(),
    SL.library = c("SL.glmnet", "SL.nnet", "SL.glm"),
    cvControl = list(V = 5L)
  ),
  outcome_model_args = list(
    family = gaussian(),
    SL.library = c("SL.glmnet", "SL.nnet", "SL.glm"),
    cvControl = list(V = 5L)
  )
)
plot(si)
}

}
\seealso{
\code{\link{STE_internal}}
}
