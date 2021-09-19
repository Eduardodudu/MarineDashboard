#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic 
    shiny.semantic::semanticPage(title = "Marine Dashboard",
                                 style = "background-color:#efefef",
                                 
                                 div(class = "ui container grid",
                                     
                                     div(class = "row",
                                        mod_Selected_vessel_ui("Selected_vessel_ui_1")
                                        ),
                                     
                                     div(class = "row",
                                        mod_dashboard_cards_ui("dashboard_cards_ui_1")
                                        ),
                                     
                                     div(class = "row",
                                        mod_leaflet_map_ui("leaflet_map_ui_1")
                                        ),
                                     
                                     div(class = "row",
                                        mod_date_info_ui("date_info_ui_1")
                                        )
                                    )
                                 
    )
    
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(ext = "png"),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'MarineDashboard'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

