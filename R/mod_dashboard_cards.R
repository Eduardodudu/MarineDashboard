#' dashboard_cards UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_dashboard_cards_ui <- function(id){
  ns <- NS(id)
  tagList(

    div(class = "sixteen wide column",
            shiny.semantic::segment(class = "raised segment",
                                      uiOutput(ns("dash_cards"))
                                    )
        )

  )
}
    
#' dashboard_cards Server Functions
#'
#' @noRd 
mod_dashboard_cards_server <- function(input, output, session, selected_vessel){
    ns <- session$ns

    # set reactive data for cards
    data_r <- reactiveValues()

    # Add data needed for cards
    observe({
      data_r$names <- c("SHIP_ID", "FLAG", "WIDTH", "LENGTH", "DWT", "longest_distance")
      data_r$data <- selected_vessel()[, data_r$names]
      data_r$description <- data_description[data_description$ID %in% data_r$names, ]
    })
    
    # Render cards
    output$dash_cards <- renderUI(
      shiny.semantic::cards(class = "three",
        #loop under ID, Description and icon tags over marine data value              
        purrrlyr::by_row(data_r$description, 
              ~cards_container(data_r$data, ..1$ID, ..1$Description, ..1$icon, ..1$label)
            ) %>% {
              .$.out
              }
      )
      
    )
    
 

}
    
## To be copied in the UI
# mod_dashboard_cards_ui("dashboard_cards_ui_1")
    
## To be copied in the server
# mod_dashboard_cards_server("dashboard_cards_ui_1")
