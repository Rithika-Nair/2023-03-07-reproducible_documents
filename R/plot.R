#' Generating a scatterplot
#'
#' @param data data used
#' @param x_val column for x values
#' @param y_val column for y values
#' @param col colour of dots
#'
#'
#' @return a scatterplot
#' @export
#'
#' @examples

scatterplot <- function(dataset, x_val, y_val, col){
  my_graph <- ggplot2::ggplot(dataset, aes(
    x = {{ x_val }},
    y = {{ y_val }},
    color = {{ col }})) +
    ggplot2::geom_point() +
    geom_hline(yintercept = 205) +
    geom_vline(xintercept = 45)

  return(my_graph)
}
