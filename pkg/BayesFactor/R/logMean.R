#'Functions to compute the logarithm of the mean (and cumulative means) of
#'vectors of logarithms
#'
#'Given a vector of numeric values of real values represented in log form,
#'\code{logMeanExpLogs} computes the logarithm of the mean of the
#'(exponentiated) values. \code{logCumMeanExpLogs} computes the logarithm of
#'the cumulative mean.
#'
#'Given a vector of values of log values \var{v}, one could compute
#'\code{log(mean(exp(v)))} in R. However, exponentiating and summing will cause
#'a loss of precision, and possibly an overflow. These functions use the
#'identity \deqn{\log(e^a + e^b) = a + \log(1+e^{b-a})}{log(e^a + e^b) = a +
#'log[ 1 + e^(b-a) ]} and the method of computing \eqn{\log(1+e^x)}{log(1+e^x)}
#'that avoids overflow (see the references). The code is written in C for very
#'fast computations.
#'
#'@aliases logMeanExpLogs logCumMeanExpLogs logSummaryStats
#'@param v A vector of (log) values
#'@return \code{logMeanExpLogs} returns a single value,
#'\code{logCumMeanExpLogs} returns a vector of values of the same length as
#'\var{v}, and \code{logSummaryStats} returns a list of the
#'log mean, log variance, and cumulative log means.
#'@author Richard D. Morey (\email{richarddmorey@@gmail.com})
#'@references For details of the approximation of \eqn{\log(1+e^x)}{log(1+e^x)}
#'used to prevent loss of precision, see
#'\url{https://www.codeproject.com/Articles/25294/Avoiding-Overflow-Underflow-and-Loss-of-Precision} and
#'\url{https://www.johndcook.com/blog/standard_deviation/}.
#'@keywords arith misc
#'@examples
#'
#'# Sample 100 values
#'y = log(rexp(100,1))
#'
#'# These will give the same value,
#'# since e^y is "small"
#'logMeanExpLogs(y)
#'log(mean(exp(y)))
#'
#'# We can make e^x overflow by multiplying
#'# e^y by e^1000
#'largeVals = y + 1000
#'
#'# This will return 1000 + log(mean(exp(y)))
#'logMeanExpLogs(largeVals)
#'
#'# This will overflow
#'log(mean(exp(largeVals)))
#'
logMeanExpLogs = function(v)
{
  logSummaryStats(v)$logMean
}

logCumMeanExpLogs = function(v)
{
  logSummaryStats(v)$cumLogMean
}

