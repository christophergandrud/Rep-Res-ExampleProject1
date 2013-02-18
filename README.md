# Example Project

## Reproducible Research with R and RStudio

### Christopher Gandrud

### CRC Press/Chapman & Hall division of Taylor & Francis

### 18 February 2013

---

To reproduce the entire Example Project download this repository and place it in your *root* directory. Then use the following directions to reproduce the data gathering, analysis, and presentation documents.

### Data Gathering

Use the following code to reproduce the data gathering using R:


```r
system("cd /Rep-Res-ExampleProject1/Data; make")
```


Note that you will need to have GNU Make set up on your computer.

### Analysis & Presentation Documents

Use the following code to reproduce the analysis and presentation documents:


```r
# Load the knitr package
library(knitr)

# Article.pdf
setwd("/Rep-Res-ExampleProject1/Presentation/Article/")
knit2pdf("Article.Rnw")

# Slideshow.pdf
setwd("/Rep-Res-ExampleProject1/Presentation/Slideshow/")
knit2pdf("Slideshow.Rnw")

# Website.html
setwd("/Rep-Res-ExampleProject1/Presentation/Website/")
knit2html("Website.Rmd")
```


# Session Info

The presentation documents were created with the following R session:


```
## R version 2.15.2 (2012-10-26)
## Platform: x86_64-apple-darwin9.8.0/x86_64 (64-bit)
## 
## locale:
## [1] en_GB.UTF-8/en_GB.UTF-8/en_GB.UTF-8/C/en_GB.UTF-8/en_GB.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
## [1] googleVis_0.3.3 RJSONIO_1.0-1   knitr_1.0.5    
## 
## loaded via a namespace (and not attached):
## [1] digest_0.6.2   evaluate_0.4.3 formatR_0.7    markdown_0.5.4
## [5] stringr_0.6.2  tools_2.15.2
```


