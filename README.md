# An R package to test rendering a pdf
## NOTE: *this package is strictly for testing !*

### Authors: David Hughes 
##### Date started: Oct 8th 2021

### About:

This repo contains a few functions to test the rendering of a pdf with an embeded png|jpg and a few figures. Some colleagues experience issues with rendering the metaboprep pdf report because of some tinytex and pandoc issues. So I am going to try and seperate the running of metaboprep and the rendering of a pdf report to recreate errors, identify errors and find solutions. 

### Installation

	devtools::install_github("hughesevoanth/exrender")




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
	
