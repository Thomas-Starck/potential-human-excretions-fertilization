# Potential Human Excretions Fertilization

This process roughly assess the fertilization potential of nitrogen in human excretions in different countries, based on FAOSTAT data.

# Prerequisites

- **R version**: 4.3.3.
- **RStudio version**: 2023.06.1+524.
- **Quarto version**: 1.5.41.

# To Reproduce Results

## first remove the files produced with the code

- graph (contains produced graphs)
- output (contains csv result files)
- docs (contains the html pages for website)
- renv/library (contains packages, that will be restored with renv::restore using renv.lock)

## then run the code 
- then open potential-human-excretions-fertilization.Rproj in Rstudio
- in console, run renv::restore (to restore project libraries)
- in terminal, run quarto render (to run the full project)