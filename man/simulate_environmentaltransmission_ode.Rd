% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_environmentaltransmission_ode.R
\name{simulate_environmentaltransmission_ode}
\alias{simulate_environmentaltransmission_ode}
\title{Environmental Transmission model}
\usage{
simulate_environmentaltransmission_ode(S = 10000, I = 1, R = 0,
  E = 0, bd = 1e-04, be = 0, m = 0, n = 0, g = 0.2, p = 0,
  c = 10, tstart = 0, tfinal = 100, dt = 0.1)
}
\arguments{
\item{S}{: starting value for Susceptible : numeric}

\item{I}{: starting value for Infected : numeric}

\item{R}{: starting value for Recovered : numeric}

\item{E}{: starting value for Environmental Pathogen : numeric}

\item{bd}{: direct transmission rate : numeric}

\item{be}{: environmental transmission rate : numeric}

\item{m}{: births : numeric}

\item{n}{: natural deaths : numeric}

\item{g}{: recovery rate : numeric}

\item{p}{: shedding rate : numeric}

\item{c}{: decay rate : numeric}

\item{tstart}{: Start time of simulation : numeric}

\item{tfinal}{: Final time of simulation : numeric}

\item{dt}{: Time step : numeric}
}
\value{
The function returns the output as a list. 
The time-series from the simulation is returned as a dataframe saved as list element \code{ts}. 
The \code{ts} dataframe has one column per compartment/variable. The first column is time.
}
\description{
An SIR model including environmental transmission
}
\details{
The model includes susceptible, infected, recovered and environmental compartments.
}
\section{Warning}{
 This function does not perform any error checking. So if you try to do something nonsensical (e.g. have negative values for parameters), the code will likely abort with an error message.
}

\examples{
 
# To run the simulation with default parameters:  
result <- simulate_environmentaltransmission_ode() 
}
