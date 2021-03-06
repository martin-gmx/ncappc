% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nca.pde.deviation.outlier.R
\name{nca.pde.deviation.outlier}
\alias{nca.pde.deviation.outlier}
\title{Calculates individual prediction distribution errors (PDE) and scaled
deviation of NCA metrics estimated from observed and simulated data.
Identifies outlier to population PK model.}
\usage{
nca.pde.deviation.outlier(obsdata, simdata, idNm = "ID", id = NULL,
  spread = "npi", figlbl = NULL, calcparam = c("AUClast", "Cmax"),
  diagparam = c("AUClast", "Cmax"), cunit = NULL, tunit = NULL,
  noPlot = FALSE, onlyNCA = onlyNCA)
}
\arguments{
\item{obsdata}{A data frame containing the NCA metrics values estimated from
the observed data}

\item{simdata}{A data frame containing the NCA metrics values estimated from
the simulated data}

\item{idNm}{Column name for ID (\strong{"ID"})}

\item{id}{ID of the individual whose data is being evaluated}

\item{spread}{Measure of the spread of simulated data (ppi (95\% parametric
prediction interval) or npi (95\% nonparametric prediction interval))
(\strong{"npi"})}

\item{figlbl}{Figure label based on dose identifier and/or population
stratifier, in addition to ID (\strong{NULL})}

\item{calcparam}{A character array of the NCA metrics used for calculations 
of PDE and deviation. The allowed NCA metrics for this histograms are 
"AUClast", "AUClower_upper", "AUCINF_obs", "AUCINF_pred", "AUMClast", 
"Cmax", "Tmax" and "HL_Lambda_z". (\strong{c("AUClast", "Cmax")})}

\item{diagparam}{A character array of the NCA metrics used for diagnostic 
test to detect outliers. The allowed NCA metrics for this histograms are
"AUClast", "AUClower_upper", "AUCINF_obs", "AUCINF_pred", "AUMClast",
"Cmax", "Tmax" and "HL_Lambda_z". (\strong{c("AUClast", "Cmax")})}

\item{cunit}{Unit for concentration (default is \strong{\code{NULL}})}

\item{tunit}{Unit for time (default is \strong{\code{NULL}})}

\item{noPlot}{Perform only NCA calculations without any plot generation
(TRUE, FALSE) (\strong{FALSE})}

\item{onlyNCA}{If \code{TRUE} only NCA is performed and ppc part is ignored
although simFile is not \code{NULL}. Default is \strong{\code{FALSE}}}
}
\value{
returns the observed data frame with added distance and simulation
  mean of the nCA metrics, and a data frame with the PDE values of the NCA
  metrics. If the individual is identified as an outlier for the PK model,
  histograms of the diagnostic NCA metrics are produced and a graphical
  object created by arrangeGrob function is returned.
}
\description{
\pkg{nca.pde.deviation.outlier} calculates individual prediction distribution
errors (PDE) and scaled deviation of NCA metrics estimated from observed and
simulated data. Identifies outlier to population PK model.
}
\details{
\pkg{nca.pde.deviation.outlier} calculates individual prediction distribution
errors (PDE) and scaled deviation of NCA metrics estimated from observed and 
simulated data. The deviation of each estimated NCA metrics is scaled by the 
"spread" of the simulated values. The "spread" is measured either by the 95\%
parametric prediction interval or 95\% non-parametric prediction interval.
Any individual yielding an absolute value of the scaled deviation for any of
the selected NCA metrics greater than 1, is assigned as an outlier to the
corresponding population PK model. The allowed NCA metrics for this
diagnostic tests are "AUClast", "AUClower_upper", "AUCINF_obs",
"AUCINF_pred", "AUMClast", "Cmax", "Tmax" and "HL_Lambda_z". By default, this
function uses AUClast and Cmax metrics for the comparison.
}
