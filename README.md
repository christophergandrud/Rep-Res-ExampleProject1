# Example Project

## Reproducible Research with R and RStudio

Christopher Gandrud

CRC Press/Chapman & Hall division of Taylor & Francis

20 October 2014


## Updates for the Second Edition

A number of changes have been made to this example for the Second Edition of
*Reproducible Research with R and RStudio*. Most importantly the file structure
has been changed to take full advantage of relative file paths.

For the version of this example from the First Edition see
[the last commit](https://github.com/christophergandrud/Rep-Res-ExampleProject1/tree/8176db9c7b6c7977047f6411bbf804116754874f).

## Reproduce the Example

Use the following directions to reproduce the data gathering, analysis, and
presentation documents.

First download this repository onto your computer.

### Data Gathering

Use the following command line code to reproduce the data gathering:

```r
# Set the working directory to Analysis/Data in this repository as needed for
your system
cd

make
```

Note that you will need to have GNU Make set up on your computer.

### Analysis & Presentation Documents

Use the following code to reproduce the analysis and presentation documents:

```r
# Set the working directory to this repository as needed for your system
setwd("Rep-Res-ExampleProject1/")

# Load the knitr package
library(knitr)

# Article.pdf
knit2pdf("Article.Rnw")

# Slideshow.pdf
knit2pdf("Slideshow.Rnw")

# Website.html
knit2html("Website.Rmd")
```

## License

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 Unported License</a>.
