#' date_info UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_date_info_ui <- function(id){
  ns <- NS(id)
  tagList(
    
    div(class = "sixteen wide column",
        shiny.semantic::segment(class = "stacked segment",
                                p(icon("calendar"), strong("Dates")),
                                textOutput(ns("vessel_date"))
                                )
        )
    )
}
    
#' date_info Server Functions
#'
#' @noRd 
mod_date_info_server <- function(input, output, session, selected_vessel){
    ns <- session$ns
 
    # Vessel dates
    output$vessel_date <- renderText(
      paste0(selected_vessel()$DATETIME[2],
             " and ",
             selected_vessel()$DATETIME[1]
      )
    )
    
}
    
## To be copied in the UI
# mod_date_info_ui("date_info_ui_1")
    
## To be copied in the server
# mod_date_info_server("date_info_ui_1")
