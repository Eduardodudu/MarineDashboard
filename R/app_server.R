#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # Your application server logic
  
  selected_vessel <- callModule(mod_Selected_vessel_server, "Selected_vessel_ui_1", marine_dataset)
  
  callModule(mod_leaflet_map_server, "leaflet_map_ui_1", selected_vessel)
  
  callModule(mod_dashboard_cards_server, "dashboard_cards_ui_1", selected_vessel)
  
  callModule(mod_date_info_server, "date_info_ui_1", selected_vessel)
  
}
