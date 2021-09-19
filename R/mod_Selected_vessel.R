#' Selected_vessel UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_Selected_vessel_ui <- function(id){
  ns <- NS(id)
  tagList(
    
        div(class = "eight wide column",
            div(class = "image",
                a(href="https://www.marinetraffic.com/",
                  img(src = "www/images/logo.jpg")
                  )
                )
            ),
        div(class = "eight wide column",
            shiny.semantic::segment(class = "raised segment",
              div(class = "ui grid container",
                div(class = "eight wide column",
                      h5("Select vessel type:"),
                        shiny.semantic::dropdown_input(input_id = ns("vessel_type"), choices = NULL)
                      ),
                
                div(class = "eight wide column",
                      h5("Select vessel:"),
                      shiny.semantic::dropdown_input(input_id = ns("vessel_name"), choices = NULL)
                      )
                )
              )
            )
        )
}

#' Selected_vessel Server Functions
#'
#' @noRd 
mod_Selected_vessel_server <- function(input, output, session, data){
  
    ns <- session$ns
    
    shiny.semantic::update_dropdown_input(session, "vessel_type", choices = unique(data$ship_type))

    observeEvent(input$vessel_type,{
      
      selected_type_data <- data %>% 
                            dplyr::filter(ship_type == input$vessel_type)
      
      shiny.semantic::update_dropdown_input(session, "vessel_name", choices = unique(selected_type_data$SHIPNAME))
    })
    
    selected_vessel <- eventReactive(input$vessel_name, {

      data %>% 
            dplyr::filter(SHIPNAME == input$vessel_name)
    })
    
    return(selected_vessel)
  
}
    
## To be copied in the UI
# mod_Selected_vessel_ui("Selected_vessel_ui_1")
    
## To be copied in the server
# mod_Selected_vessel_server("Selected_vessel_ui_1")
