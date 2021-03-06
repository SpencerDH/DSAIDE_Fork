% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_seir_stochastic.R
\name{simulate_seir_stochastic}
\alias{simulate_seir_stochastic}
\title{Stochastic simulation of an SEIR-type model}
\usage{
simulate_seir_stochastic(S = 1000, I = 10, bE = 0, bI = 0.001,
  gE = 0.5, gI = 0.5, w = 0, m = 0, n = 0, tmax = 100,
  rngseed = 100)
}
\arguments{
\item{S}{: initial number of susceptible hosts : numeric}

\item{I}{: initial number of infected, symptomatic hosts : numeric}

\item{bE}{: level/rate of infectiousness for hosts in the E compartment : numeric}

\item{bI}{: level/rate of infectiousness for hosts in the I compartment : numeric}

\item{gE}{: rate at which a person leaves the E compartment : numeric}

\item{gI}{: rate at which a person leaves the I compartment : numeric}

\item{w}{: rate at which recovered lose immunity and return to susceptible : numeric}

\item{m}{: the rate at which new individuals enter the model (are born) : numeric}

\item{n}{: the rate of natural death (the inverse is the average lifespan) : numeric}

\item{tmax}{: maximum simulation time : numeric}

\item{rngseed}{: seed for random number generator to allow reproducibility : numeric}
}
\value{
The function returns a list. The list has one element, a data frame ts
which contains the time series of the simulated model, 
with one column per compartment/variable. The first column is time.
}
\description{
Simulation of a stochastic SEIR type model with the following
  compartments: Susceptibles (S), Infected and pre-symptomatic/exposed (E), 
  Infected and Symptomatic (I), Recovered and Immune (R)
}
\details{
A compartmental ID model with several states/compartments is
  simulated. Initial conditions for the E and R variables are 0. Units of
  time depend on the time units chosen for model parameters. The simulation
  runs as a stochastic model using the adaptive-tau algorithm as implemented
  by ssa.adaptivetau() in the adpativetau package. See the manual of this
  package for more details.
}
\section{Warning}{
 This function does not perform any error checking. So if
  you try to do something nonsensical (e.g. specify negative parameter values
  or fractions > 1), the code will likely abort with an error message.
}

\examples{
# To run the simulation with default parameters, just call the function:
result <- simulate_seir_stochastic()
# To choose parameter values other than the standard one, specify them like this:
result <- simulate_seir_stochastic(S = 2000,  tmax = 200, bE = 0.01)
# You can display or further process the result, like this:
plot(result$ts[,'time'],result$ts[,'S'],xlab='Time',ylab='Number Susceptible',type='l')
print(paste('Max number of infected: ',max(result$ts[,'I']))) 
}
\seealso{
See the Shiny app documentation corresponding to this simulator
function for more details on this model. See the manual for the adaptivetau
package for details on the stochastic algorithm.
}
\author{
Andreas Handel
}
