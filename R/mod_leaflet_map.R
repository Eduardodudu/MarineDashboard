#' leaflet_map UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_leaflet_map_ui <- function(id){
  ns <- NS(id)
  tagList(
    div(class = "sixteen wide column",
        shiny.semantic::segment(class = "raised segment",
          leaflet::leafletOutput(ns("vessel_map"))
          )
        )
 
  )
}
    
#' leaflet_map Server Functions
#'
#' @noRd 
mod_leaflet_map_server <- function(input, output, session, selected_vessel){
    ns <- session$ns
 
    # Render map
    output$vessel_map <- leaflet::renderLeaflet({
      leaflet::leaflet(data = selected_vessel()) %>%
        leaflet::addTiles() %>%
        leaflet::addMarkers(lng = ~LON, lat = ~LAT) %>%
        leaflet::addPolylines(lng = ~LON, lat = ~LAT,
                              label = paste0("Distance: ", selected_vessel()$longest_distance[1] , " m"))
    })
    

}
    
## To be copied in the UI
# mod_leaflet_map_ui("leaflet_map_ui_1")
    
## To be copied in the server
# mod_leaflet_map_server("leaflet_map_ui_1")
