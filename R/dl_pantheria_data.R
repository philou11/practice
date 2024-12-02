#' ' Download PanTHERIA dataset
#'
#' @description 
#' This function downloads the PanTHERIA dataset (text file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>.
#' The file `PanTHERIA_1-0_WR05_Aug2008.txt` will be stored in 
#' `data/pantheria/`. This folder will be created if required.
#'
#' @return This function returns the path (`character`) to the downloaded file
#' (e.g. `data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt`).
#' 
#' @export

dl_pantheria_data <- function() {
  
# Chemin enregistrement fichiers 
pantheria_path <- here::here("data", "pantheria")

# Création des sous-repertoires
dir.create(pantheria_path, showWarnings = FALSE, recursive = TRUE)

# Informations fichiers
pantheria_filename <- "PanTHERIA_1-0_WR05_Aug2008.txt"
pantheria_url <- "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/"
pantheria_full_url <- paste0(pantheria_url, pantheria_filename)
pantheria_dest_file <- file.path(pantheria_path, pantheria_filename)

## Telechargement fichiers
utils::download.file(url = pantheria_full_url,
                     destfile = pantheria_dest_file,
                     mode = "wb")

return(pantheria_dest_file)
}
