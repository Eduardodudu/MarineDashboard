#' Description of the Marine dataset
#'
#' A dataset that contains a full description of the marine dataset.
#' It also includes a set of icon and a label name reference to use 
#' in shiny.
#'
#' @format A data frame with 21 rows and 4 variables:
#' \describe{
#'   \item{ID}{Description ID, related to marine dataset column name}
#'   \item{Description}{A Description about}
#'   \item{icon}{A tag icon reference }
#'   \item{label}{A label for the column }
#' }
"data_description"




#' Marine dataset from AIS signal 
#'
#' A dataset that containts part of the AIS signal of vessels around the world
#'
#' @format A data frame with 3102887 rows and 20 variables:
#' \describe{
#'   \item{LAT}{ship’s latitude}
#'   \item{LON}{ship’s longitude}
#'   \item{SPEED}{ship’s speed in knots}
#'   \item{COURSE}{ship’s course as angle}
#'   \item{HEADING}{ship’s compass direction}
#'   \item{DESTINATION}{ship’s destination (reported by the crew)}
#'   \item{FLAG}{ship’s flag}
#'   \item{LENGTH}{ship’s length in meters}
#'   \item{SHIPNAME}{ship’s name}
#'   \item{SHIPTYPE}{ship’s type}
#'   \item{SHIP_ID}{ship’s unique identifier}
#'   \item{WIDTH}{ship’s width in meters}
#'   \item{DWT}{ship’s deadweight in tones}
#'   \item{DATETIME}{date and time of the observation}
#'   \item{PORT}{Current port reported by the vessel}
#'   \item{Date}{date extracted from DATETIME}
#'   \item{Week_nb}{week number extracted from date}
#'   \item{Ship_type}{ship’s type from SHIPTYPE}
#'   \item{Port}{current port assigned based on the ship’s location}
#'   \item{Is_parked}{indicator whether the ship is moving or not }
#' }
#' @source https://www.marinetraffic.com/
"marine_dataset"



