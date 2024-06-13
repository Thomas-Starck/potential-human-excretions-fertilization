#function to save csv files in a directory. If directory does not exist, creates it
f_save_csv_files <- function(file_to_save, output_path, file_name){
  
  # Create the directory recursively if it doesn't exist
  if (!file.exists(output_path)) {
    dir.create(output_path, recursive = TRUE)
  }
  
  # Write the CSV file
  write_csv(file_to_save, file = file.path(output_path, file_name))
}


#function to save a graph
f_save_graph_pdf_png <- function(gg_plot, path_name, file_name, resolution, height, width){
  
  #pdf
  ggsave(
    paste0(path_name, file_name, ".pdf"),
    create.dir = T,
    bg="white",
    dpi=resolution, width=width, height=height,
  )
  
  #png
  ggsave(
    paste0(path_name, file_name, ".png"),
    create.dir = T,
    bg="white",
    dpi=resolution, width=width, height=height,
  )
  
}

#loads core tidyverse package
library(tidyverse) #loads multiple packages (see https://tidyverse.tidyverse.org/)

#core tidyverse packages loaded:
# ggplot2, for data visualisation. https://ggplot2.tidyverse.org/
# dplyr, for data manipulation. https://dplyr.tidyverse.org/
# tidyr, for data tidying. https://tidyr.tidyverse.org/
# readr, for data import. https://readr.tidyverse.org/
# purrr, for functional programming. https://purrr.tidyverse.org/
# tibble, for tibbles, a modern re-imagining of data frames. https://tibble.tidyverse.org/
# stringr, for strings. https://stringr.tidyverse.org/
# forcats, for factors. https://forcats.tidyverse.org/
# lubridate, for date/times. https://lubridate.tidyverse.org/

#also loads the following packages (less frequently used):
# Working with specific types of vectors:
#     hms, for times. https://hms.tidyverse.org/
# Importing other types of data:
#     feather, for sharing with Python and other languages. https://github.com/wesm/feather
#     haven, for SPSS, SAS and Stata files. https://haven.tidyverse.org/
#     httr, for web apis. https://httr.r-lib.org/
#     jsonlite for JSON. https://arxiv.org/abs/1403.2805
#     readxl, for .xls and .xlsx files. https://readxl.tidyverse.org/
#     rvest, for web scraping. https://rvest.tidyverse.org/
#     xml2, for XML. https://xml2.r-lib.org/
# Modelling
#     modelr, for modelling within a pipeline. https://modelr.tidyverse.org/
#     broom, for turning models into tidy data. https://broom.tidymodels.org/

# Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors



#setting viridis theme for colors
scale_colour_continuous <- scale_colour_viridis_c
scale_colour_discrete   <- scale_colour_viridis_d
scale_colour_binned     <- scale_colour_viridis_b
#setting viridis theme for fill
scale_fill_continuous <- scale_fill_viridis_c
scale_fill_discrete   <- scale_fill_viridis_d
scale_fill_binned     <- scale_fill_viridis_b