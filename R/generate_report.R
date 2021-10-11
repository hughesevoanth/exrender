#' A function to generate the Rmd report
#'
#' This function generates the Rmd report.
#' @param path_2_Rdatafile full path to the Rdatafile 
#' @param path_2_Rmd_template full path to the Rmd report template
#' @param dir_4_report directory to place the report
#' @keywords render pdf report
#' @return Writes a pdf report to file
#' @importFrom rmarkdown render
#' @export
#' @examples
#' generate_report()
generate_report = function(path_2_Rdatafile = ".", dir_4_report = ".", path_2_Rmd_template = system.file("rmarkdown", package="exrender") ){
   
  # generate_report = function(path_2_Rdatafile, dir_4_report = ".", path_2_Rmd_template = system.file("rmarkdown", package="exrender") ){
  
  render( file.path( path_2_Rmd_template, "report.Rmd"),
          output_dir = dir_4_report,
          output_file = "Example_Report.pdf" ,
          params = list(Rdatafile = path_2_Rdatafile, out_dir = dir_4_report) )

}


