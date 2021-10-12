# Test Report Render

by: David A Hughes
date: **`r format(Sys.time(), '%d %B, %Y')`**

```{r setup, include=FALSE}
suppressPackageStartupMessages(library(knitr))
suppressPackageStartupMessages(library(tidyverse))

knitr::opts_chunk$set(warning=FALSE, echo=TRUE, message=FALSE, 
               results='asis', fig.width=6, fig.height=6 )
```

## Load the Rdata file

```{r load_Rdata}
# load("GeneratedData.Rdata")
```
---

## A picture of daisy built into package

```{r daisy_pic, out.width = "200px"}
f = system.file("rmarkdown", package="exrender")
pic = file.path( f, "skeleton/daisy.png")
knitr::include_graphics(pic)
```
---

## plot the ggplot object

We made this image in the make_some_data() function and passed it to the report as a paramater that needed to be loaded.

```{r ggplot_fig, fig.width = 8, fig.height = 6}
my_plot
```

## make a table 

A table of the first few rows of the embedded data set 'ng_anno'

```{r knit_table}
knitr::kable(ng_anno[1:4,])
```


