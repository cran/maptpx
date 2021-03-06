\name{counts}
\alias{stm_tfidf}
\alias{normalize}
\title{Utilities for count matrices}
\description{
Tools for manipulating (sparse) count matrices.}
\usage{
normalize(x,byrow=TRUE)
stm_tfidf(x)
}
\arguments{
  \item{x}{A \code{simple_triplet_matrix} or \code{matrix} of counts. }
  \item{byrow}{Whether to normalize by row or column totals.}
}
\value{
 \code{normalize} divides the counts by row or column totals, and  \code{stm_tfidf} returns a matrix with entries \eqn{x_{ij} \log[ n/(d_j+1) ]}, where \eqn{x_{ij}} is term-j frequency in document-i, 
and \eqn{d_j} is the number of documents containing term-j.
}
\author{
  Matt Taddy \email{mataddy@gmail.com}
}
\examples{
normalize( matrix(1:9, ncol=3) )
normalize( matrix(1:9, ncol=3), byrow=FALSE )

(x <- matrix(rbinom(15,size=2,prob=.25),ncol=3))
stm_tfidf(x)
}
