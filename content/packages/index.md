---
title: Packages
---

## Installation and use

* Install R Markdown by running `install.packages("rmarkdown")`.

The rmarkdown package provides many different output formats "out of the box" including HTML pages, Word documents, and PDFs. 

knitr???

{{% rstudio-tip %}} 
If you are using [RStudio as your integrated development environment (IDE)](https://rstudio.com/products/rstudio/), you do not need to explicitly install or load the rmarkdown package, as RStudio automatically does both when needed. You also will not need to install Pandoc (<https://pandoc.org>), because RStudio has bundled it for you.
{{%/ rstudio-tip %}}


## Extension packages

For additional output format options, you can explore additional packages in the R Markdown ecosystem that give you access to more styles, layouts, and applications to extend R Markdown.

{{< packages-hex "packages" >}}


The tidyverse also includes many other packages with more specialised usage. They are not loaded automatically with `library(tidyverse)`, so you'll need to load each one with its own call to `library()`.

## Related packages

### Workflow

+ here

### Tables

+ The goal of the [gt](https://gt.rstudio.com/) package is to make it easy to create data-based, customized tables using a *grammar of tables*. The grammar allows you to describe a set of underlying components that can be recombined in different ways to solve different problems.

+ The goal of the [DT](https://rstudio.github.io/DT/) package is to make it easy to create interactive data-based HTML tables with search, sort, and filtering.

### Style & theming

+ The goal of the [bootstraplib]() package

+ thematic

## Community packages

### Templates & output formats

+ [cleanrmd](https://pkg.garrickadenbuie.com/cleanrmd/)

+ [vitae](https://pkg.mitchelloharawild.com/vitae/)

+ [papaja](https://crsh.github.io/papaja_man/) (Preparing APA Journal Articles) is an R package that provides document formats to produce complete APA manuscripts from RMarkdown-files (PDF and Word documents) and helper functions that facilitate reporting statistics, tables, and plots. 

+ [rmdformats](https://github.com/juba/rmdformats)

+ [markdowntemplates](https://github.com/hrbrmstr/markdowntemplates)

+ The [prettydoc](https://github.com/yixuan/prettydoc/) package provides lightweight document formats with a range of attractive themes.

+ svm r templates by Steve Miller

+ [posterdown](https://github.com/brentthorne/posterdown)

+ [betterposter](https://gerkelab.github.io/betterposter/index.html)


### Stylers

+ [xaringanthemer](https://pkg.garrickadenbuie.com/xaringanthemer/)

+ [xaringanExtra](https://pkg.garrickadenbuie.com/xaringanExtra/#/)

+ [bookdownThemeEditor](https://github.com/hebrewseniorlife/bookdownThemeEditor)

### Extras

+ [kableExtra](http://haozhu233.github.io/kableExtra/)

+ The [countdown](https://pkg.garrickadenbuie.com/countdown/) package makes it easy to drop in a simple countdown timer in slides and HTML documents written in R Markdown.

+ The goal of the [metathis](https://pkg.garrickadenbuie.com/metathis/) package is to help you add HTML `<meta>` tags to your R Markdown and Shiny apps.

+ The [tweetrmd](https://github.com/gadenbuie/tweetrmd) package helps you easily embed Tweets anywhere R Markdown turns plain text into HTML.