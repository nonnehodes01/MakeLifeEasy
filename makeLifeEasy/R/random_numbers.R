#' Genereer een lijst met willekeurige getallen
#'
#' Deze functie genereert een lijst met willekeurige getallen.
#'
#' @param length De gewenste lengte van de lijst.
#' @return Een lijst met willekeurige getallen.
#' @export
#' @examples
#' # Voorbeeld van het gebruik van de functie
#' generate_random_numbers(5)

generate_random_numbers <- function(length) {
  random_list <- sample(1:100, length, replace = TRUE)
  return(random_list)
}
