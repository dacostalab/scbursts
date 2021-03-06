% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/segment.R
\name{segment.open_dwells}
\alias{segment.open_dwells}
\title{Extract open dwells. (Any conductance greater than zero)}
\usage{
segment.open_dwells(segment)
}
\arguments{
\item{segment}{the segment object}
}
\value{
the open dwells
}
\description{
Extract open dwells. (Any conductance greater than zero)
}
\examples{

# It's more likely that you created states or dwells with some function
states  <-  c(0,      1,    0,    1,    0,    1,    0,    1,    0,    1)
dwells  <-  c(0.1,  1.1,  0.5,  0.2,  1.0,  1.1,  0.6,  1.1,  0.8,  1.1)
my_burst <- segment.create(states, dwells, seg=1, start_time=3.14159, name="example_segment")

open_dwells <- segment.open_dwells(my_burst)
head(open_dwells)

}
