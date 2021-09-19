#' Shiny.semantic card
#' 
#' Returns a shiny.semantic card div by a reference of a dataframe
#'
#' @param data The dataframe
#' @param column Reference to the dataframe column
#' @param description A description of the column name
#' @param icon An icon reference 
#' @param label A label for the column
#' 
#' @return A div
cards_container <- function(data, column, description, icon, label = NULL){
  require(dplyr)
  
  if (is.null(label)) {
    label <- column
  }
    
  value <- data[1,column] %>%
             dplyr::pull()
  
  shiny.semantic::card(
                       div(class = "content",
                           div(class = "header", icon(icon), paste0(label)),
                           div(class = "meta", paste(description)),
                           div(class = "description", strong(value)
                             )
                           )
                       )
  
}





