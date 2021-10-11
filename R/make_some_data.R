#' A function to make some data
#'
#' This function generates some random data to pass to my Markdown Report
#' @keywords random data generation
#' @return writes a data set "wdata" a prcomp object "my_pca" and a ggplot object "my_plot" to a Rdata file.
#' @importFrom stats prcomp
#' @importFrom magrittr %>%
#' @importFrom ggplot2 ggplot aes geom_point
#' @export
#' @examples
#' make_some_data()
make_some_data = function(){
  ## global variable binding to function
  PC1 = PC2 = Species = NULL
  
  ## define some data
  wdata = datasets::iris
  ## make a pca
  my_pca = stats::prcomp(wdata[, 1:4], center = TRUE, scale = TRUE)
  ## plot data
  pdata = cbind( as.data.frame(my_pca$x), Species = as.factor(wdata$Species) )
  ## generate a plot
  my_plot = pdata %>% ggplot( aes(x = PC1, y = PC2) ) +
    geom_point( aes(color = Species) )
  
  ##
  save(wdata, my_pca, my_plot, file = "GeneratedData.Rdata")
}