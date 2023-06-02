#' Pas de categorie van een kolom in een tibble aan
#'
#' Deze functie past de categorie van een opgegeven kolom in een tibble aan naar de opgegeven nieuwe categorie.
#'
#' @param data De tibble waarin de kolom zich bevindt.
#' @param column_name De naam van de kolom die moet worden aangepast.
#' @param new_category De nieuwe categorie voor de kolom.
#' @return De tibble met de aangepaste kolomcategorie.
#' @export
#' @examples
#' # Voorbeeld van het gebruik van de functie
#' data <- tibble(
#'   col1 = c("1", "2", "3"),
#'   col2 = c(4, 5, 6)
#' )
#' data <- change_column_category(data, column_name = "col1", new_category = "character")
#' data

change_column_category <- function(data, column_name, new_category) {
  data[[column_name]] <- as(data[[column_name]], new_category)
  return(data)
}
