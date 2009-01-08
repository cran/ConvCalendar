\name{OtherDate}
\alias{OtherDate}
%- Also NEED an '\alias' for EACH other topic documented here.
\alias{as.OtherDate.Date}
\alias{as.Date.OtherDate}
\alias{as.OtherDate}
\title{Calendar conversions }
\description{
\code{OtherDate()} creates an object of class \code{OtherDate} containing day, month, year, and
calendar. This has methods to convert to and from \code{Date}.
}
\usage{
OtherDate(day, month, year, calendar)
as.OtherDate(x,calendar,...)
\method{as.Date}{OtherDate}(x,...)
\method{as.OtherDate}{Date}(x,calendar,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{day}{numeric vector, day of the month}
  \item{month}{numeric vector, month number }
  \item{year}{numeric vector, year}
  \item{calendar}{a single character string that is partial-matched to
    "gregorian", "julian","hebrew","islamic","frenchrev","persian","modpersian" }
  \item{x}{A \code{Date} or \code{OtherDate} object as appropriate}
  \item{\dots}{Not used.}
}
\details{
"persian" is the Jalali calendar, "modpersian" is the modern Persian
calendar (which has regularised leap years). These are accurate only
from 475BCE to 2948CE.

Technically the Islamic calendar depends on actual sighting of the
crescent moon and so cannot be projected into the future. In practice, a
reliable guide to the calendar has alternating months of 29 and 30 days,
with a leap day at the end of year in 11 years out of 30. This is used
by the "islamic" converter. The converter has 1-1-1 as 16 July 622CE;
some sources use 15 July of that year.

The French Revolutionary calendar is essentially pointless, since it
was only used for 14 years and there is a bug it how it was originally
defined -- the specifications of having a leap year every fourth year
and having the year start on the autumn equinox are incompatible.

}
\value{
 An object of class \code{OtherDate} or \code{Date} as appropriate.
}
\references{
\url{http://www.projectpluto.com/calendar.htm} is the source for the
conversion code and documentation.  
}
\author{Thomas Lumley}

\seealso{\code{\link{date}}, \code{\link{as.Date}} }
\examples{

persian <- OtherDate(day=1:20, month=10, year=1385, calendar="persian")
persian

gregorian<-as.Date(persian)
gregorian

as.OtherDate(gregorian,"persian")

as.OtherDate(gregorian,"islamic")

as.OtherDate(gregorian,"hebrew")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}

