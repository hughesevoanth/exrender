# An R package to test rendering a pdf
## NOTE: *this package is strictly for testing !*

### Authors: David Hughes 
##### Date started: Oct 8th 2021

### About:

This repo contains a few functions to test the rendering of a pdf with an embeded png|jpg and a few figures. Some colleagues experience issues with rendering the metaboprep pdf report because of some tinytex and pandoc issues. So I am going to try and seperate the running of metaboprep and the rendering of a pdf report to recreate errors, identify errors and find solutions. 

### Installation

	devtools::install_github("hughesevoanth/exrender")

## pdflatex and pandoc are required to generate the pdf outside the RStudio IDE

To have the pdf report generated - in a terminal or HPC - you must have a latex to pdf engine installed. To check if it already available on your system run:

	Sys.which('pdflatex')

To determine which version you have run:

	pdflatex -v
	
This is a pdf engine from pdfTeX (https://www.tug.org/applications/pdftex/) written by Han The Thanh. It is distributed in TeX Live (https://www.tug.org/texlive/) and MacTex (https://www.tug.org/mactex/) or MiKTeX (https://miktex.org). If you find that pdflatex is not available on your system do install it via one of the referenced links.

You will also need an instace of pandoc installed

	https://pandoc.org/installing.html
	
### Alternatively,

You can run everything inside the **Rstudio IDE** and everything should run a bit more smoothly. This is because Rstudio has everything it need to turn Rmarkdwon files into html or pdfs built in. 

### Example code to run the package

	###############################
	## A quick run of the exrender
	## "example render" package
	## by: David Hughes
	## date: Ot 11th 2021
	###############################
	## move into some toy directory
	setwd("~/Downloads")
	## make the directory "toy"
	system(paste0( "mkdir toy" ))
	## move into the toy directory
	setwd("./toy")
	
	#######################
	## install the package
	#######################
	devtools::install_github("hughesevoanth/exrender")
	
	#######################
	## run the test example
	#######################
	## load library
	library(exrender)
	
	## make some data and write an Rdata file to file
	##   - written to the working directory "GeneratedData.Rdata"
	make_some_data()
	
	## make a pdf report
	# mypath = "~/Downloads/toy/"
	mypath = "."
	generate_report(path_2_Rdatafile = file.path(mypath, "GeneratedData.Rdata"), 
		dir_4_report = mypath )
	
