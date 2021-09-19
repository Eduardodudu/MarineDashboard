## code to prepare `data_description` dataset goes here

data_description <- readr::read_csv("data-raw/Descriptions.csv")

usethis::use_data(data_description, overwrite = TRUE)
