#' A function to generate the html report
#'
#' This function generates the html report.
#' @param full_path_2_Rdatafile full path to the Rdatafile 
#' @param dir_4_report directory to place the report
#' @param path_2_Rmd_template full path to the html report template
#' @keywords knit html report
#' @return Writes a html report to file
#' @importFrom knitr knit2html
#' @export
#' @examples
#' generate_html_report()
generate_html_report = function(full_path_2_Rdatafile = "GeneratedData.Rdata", dir_4_report = ".", path_2_Rmd_template = system.file("rmarkdown", package="exrender") ){
   
   ## load R data file to environment
   load(full_path_2_Rdatafile)

   ## knit report
   knit2html( file.path( path_2_Rmd_template,"report_2_knit.R"),
    output= paste0(dir_4_report, "Example_Report.html") )
  

}


