% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/segment.R
\name{segment.impose_deadtime}
\alias{segment.impose_deadtime}
\title{Imposes a deadtime to a segment by removing any dwell that is shorter than the deadtime.}
\usage{
segment.impose_deadtime(segment, deadtime)
}
\arguments{
\item{segment}{the segment containing dwells and states.}

\item{deadtime}{the briefest possible event in microseconds.}
}
\value{
A modified copy of the original segment
}
\description{
The user specifies a deadtime in microseconds. The function effectively undoes
the work of the event detection algorithm by reverting the conductance level 
(of the brief dwell) back to the previous conductance level in the time sequence.
The function then returns a collapsed segment containing alternating dwells.
}
\examples{

# It's more likely that you created states or dwells with some function
states  <-  c(0,    0.2,    0,    1,    0,  0.5,    0,  0.7,    0,    1)
dwells  <-  c(0.1,  1.1,  0.5,  0.2,  1.0,  1.1,  0.6,  1.1,  0.8,  1.1)
my_burst <- segment.create(states, dwells, seg=1, start_time=3.14159, name="example_segment")

my_burst_d <- segment.impose_deadtime(my_burst, deadtime=0.3)

}
