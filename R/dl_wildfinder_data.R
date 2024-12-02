##' Download WWF WildFinder dataset
#'
#' @description 
#' This function downloads the WWF WildFinder dataset (World Wildlife Fund 2006)
#' hosted on the GitHub repository <https://github.com/rdatatoolbox/datarepo/>. 
#' The files won't be downloaded if already exist locally (except if 
#' `overwrite = TRUE`).
#' 
#' Three `.csv` files will be saved in `data/wildfinder/`:
#'   - `wildfinder-ecoregions_list.csv` 
#'   - `wildfinder-ecoregions_species.csv`
#'   - `wildfinder-mammals_list.csv`
#'   
#' The folder `data/wildfinder/` will be created if required.
#' 
#' @param overwrite a `logical`. If `TRUE`, the files will be downloaded again 
#'   and the previous versions will be erased. Default is `FALSE`.
#'
#' @return No return value.
#' 
#' @export
#' 
#' @references
#' World Wildlife Fund (2006) WildFinder: Online database of species 
#' distributions. Version Jan-06. 
#' URL: <https://www.worldwildlife.org/pages/wildfinder-database>.
#' 
#' @examples 
#' dl_wildfinder_data()

dl_wildfinder_data <- function() {
  
  # Chemin enregistrement fichiers 
  wildfinder_path <- here::here("data", "wildfinder")
  
  # Création des sous-repertoires
  dir.create(wildfinder_path, showWarnings = FALSE, recursive = TRUE)
  
  # Informations fichiers
  wildfinder_url <- "https://github.com/rdatatoolbox/datarepo/tree/main/data/wildfinder/"
  wildfinder_filename1 <- "wildfinder-ecoregions_list.csv"
  wildfinder_full_url1 <- paste0(wildfinder_url, wildfinder_filename1)
  wildfinder_dest_file1 <- file.path(wildfinder_path, wildfinder_filename1)
  
  wildfinder_filename2 <- "wildfinder-ecoregions_species.csv"
  wildfinder_full_url2 <- paste0(wildfinder_url, wildfinder_filename2)
  wildfinder_dest_file2 <- file.path(wildfinder_path, wildfinder_filename2)
  
  wildfinder_filename3 <- "wildfinder-mammals_list.csv"
  wildfinder_full_url3 <- paste0(wildfinder_url, wildfinder_filename3)
  wildfinder_dest_file3 <- file.path(wildfinder_path, wildfinder_filename3)
  
  
  ## Telechargement fichiers
  utils::download.file(url = wildfinder_full_url1,
                       destfile = wildfinder_dest_file1,
                       mode = "wb")
  utils::download.file(url = wildfinder_full_url2,
                       destfile = wildfinder_dest_file2,
                       mode = "wb")
  utils::download.file(url = wildfinder_full_url3,
                       destfile = wildfinder_dest_file3,
                       mode = "wb")
  
}

