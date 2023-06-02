#' Eenvoudige samenvatting van een tibble
#'
#' Deze functie biedt een eenvoudige samenvatting van een tibble met behulp van de opgegeven groepering en kolommen.
#'
#' @param data De tibble om samen te vatten.
#' @param grouping_column De naam van de kolom om op te groeperen.
#' @param summary_columns Een vector met de namen van de kolommen om samen te vatten.
#' @return Een samenvatting van de tibble.
#' @export
#' @examples
#' # Voorbeeld van het gebruik van de functie
#' data <- tibble(
#'   group = c("A", "A", "B", "B", "B"),
#'   value1 = c(1, 2, 3, 4, 5),
#'   value2 = c(10, 20, 30, 40, 50)
#' )
#' summary <- simple_summary(data, grouping_column = "group", summary_columns = c("value1", "value2"))
#' summary
simple_summary <- function(data, grouping_column, summary_columns) {
  summary <- data %>%
    group_by({{ grouping_column }}) %>%
    summarise(across({{ summary_columns }}))

  return(summary)
}
