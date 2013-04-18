# Example Project

## Reproducible Research with R and RStudio

### Christopher Gandrud

### CRC Press/Chapman & Hall division of Taylor & Francis

### 10 April 2013

---

To reproduce the entire Example Project download this repository and place it in your *root* directory. Then use the following directions to reproduce the data gathering, analysis, and presentation documents.

### Data Gathering

Use the following R code to reproduce the data gathering:


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
setwd("/Rep-Res-ExampleProject1/Presentation/Other/Slideshow/")
knit2pdf("Slideshow.Rnw")

# Website.html
setwd("/Rep-Res-ExampleProject1/Presentation/Other/Website/")
knit2html("Website.Rmd")
```

## License

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 Unported License</a>.

