#' Max vessel sailed distance
#'
#' Returns the most recent maximum distance of a vessel route
#'
#' @param data The data that has marine dataset
#'
#' @return A dataframe
#' @examples
#' # the most recent maximum distance of the vessel for SHIP_ID = 123296
#' 
#' marine_dataset %>%
#' filter(SHIP_ID == 123296) %>%
#' max_vessel_dist()
max_vessel_dist <- function(data){
  
  data %>%
    # sort by date in order to run sequential observations on geodist
    dplyr::arrange(desc(DATETIME)) %>%
    # calculate the distance between two consecutive observations
    dplyr::mutate(longest_distance = round(c(geodist::geodist(., sequential = TRUE, measure = "geodesic"),0),2)) %>%
    # Filter the most recent start and end vessel moves
    dplyr::filter(dplyr::row_number() %in% c(which.max(longest_distance == max(longest_distance)),
                                             which.max(longest_distance == max(longest_distance))+1)) %>%
    # Set start and end position
    dplyr::mutate(position = c("end", "start"))
  
}