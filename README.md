# Potential Human Excretions Fertilization

Code to roughly assess the fertilization potential of nitrogen in human excretions in different countries, based on FAOSTAT data.

Associated with a DOI on Zenodo repository https://doi.org/10.5281/zenodo.14591081

Supporting results presented in Chapter 5 of the thesis "Towards a circular management of nitrogen and phosphorus in human excreta: current state, global agricultural potential, and spatial constraint in France", https://theses.fr/s297415

# Prerequisites

- **R version**: 4.3.3.
- **RStudio version**: 2023.06.1+524.
- **Quarto version**: 1.5.41.

# To Reproduce Results

## first remove the files produced with the code

- graph (contains produced graphs)
- output (contains csv result files)
- docs (contains the html pages for website)
- renv/library (should be absent at first download; contains packages, that will be restored with renv::restore using renv.lock)

## then run the code 
- then open potential-human-excretions-fertilization.Rproj in Rstudio
- in console, run renv::restore (to restore project libraries)
- in terminal, run quarto render (to run the full project)