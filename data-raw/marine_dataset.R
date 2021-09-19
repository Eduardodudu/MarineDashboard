## code to prepare `marine_dataset` dataset goes here
library(tidyverse)
source("./data-raw/max_distance.R")

marine_raw <- readr::read_csv(unz("./data-raw/marineData.zip", "ships.csv"))

marine_silver <- marine_raw %>% 
                 # Remove cases where vessel is parked
                 dplyr::filter(is_parked  == 0) %>% 
                 #Trickery to remove cases where has no proper
                 #observations for dashboard
                 dplyr::mutate(vessel_id = SHIP_ID) %>% 
                 group_nest(vessel_id) %>% 
                 dplyr::mutate(n = map(data, ~nrow(..1)))


marine_dataset <- marine_silver %>% 
                 #remove cases where has no proper observations
                 dplyr::filter(n > 1) %>% 
                 # calculate the max vessel distance for all vessels
                 dplyr::mutate(vessel_data = map(data, ~max_vessel_dist(data = ..1))) %>% 
                 # select only vessel_data
                 dplyr::select(vessel_data) %>% 
                 # get back tidy dataframe results
                 tidyr::unnest()


usethis::use_data(marine_dataset, overwrite = TRUE)
