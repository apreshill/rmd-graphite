---
title: "Basics"
weight: 1
description: | 
  Get familiar with the basic ingredients of an `.Rmd` file.
---




## What is R Markdown?

R Markdown is an ecosystem of R packages designed for anyone who uses code to work with data. You can use R Markdown at any stage of an analysis project, any time you want to develop code and ideas alongside each other. 

Start an R Markdown project if you want to:

{{< columns class="twocols" >}}
{{< column name="wide-left" >}}

* Save, execute, and explain your code, all in the same place. Develop your code and ideas in one reproducible document.

* Transform your code into polished and professional data products&mdash;reports, dashboards, websites, slides, even books. Knit plots, tables, and results together with narrative text, and create analyses ready to be shared.

{{< /column >}}
{{< column name="narrow-right" >}}

![](hedgehog.png)

{{< /column >}}
{{< /columns  >}}

## What is an `.Rmd` file?

{{< columns class="twocols" >}}
{{< column name="even-left" >}}

Every R Markdown project starts with an R Markdown file that has the extension `.Rmd`. 

This particular one analyzes children's early words, but every `.Rmd` includes the same three basic elements inside:

-   A block of metadata at the top, between two fences of `---`s. This is written in [YAML](https://learnxinyminutes.com/docs/yaml/).
-   Narrative text, written in [Markdown](https://commonmark.org/help/tutorial/).
-   Code chunks in gray between two fences of ```` ``` ````, written with R or another programming language.

You can use all three elements to develop your code and ideas in one reproducible document. 

{{< /column >}}
{{< column name="even-right" >}}

![](01-source.png)

{{< /column >}}
{{< /columns  >}}

## How do I create an `.Rmd` file?

Here is the plain text version of the same `.Rmd` document, which you can copy and paste into a new document:

````md
---
title: "Early words"
output: html_document
---

```{r include=FALSE}
library(paletteer)
library(ggplot2)
ggplot2::theme_set(theme_minimal())
words <- read.csv("data/word_summary.csv")
```

Which words do children say, and at what age? We analyze data from the Stanford [wordbank](http://wordbank.stanford.edu/) database using the [wordbankr](http://langcog.github.io/wordbankr/) package to find out.

We have data on children from `r min(words$age)` to `r max(words$age)` months of age.

```{r message=FALSE, out.width='80%'}
plot <- ggplot(words, aes(x = age, y = produces, color = lemma)) + 
  geom_smooth(se = FALSE, lwd = .5) +
  geom_point() 
  
plot + scale_color_paletteer_d("nationalparkcolors::Saguaro")
```
````


## What is the **rmarkdown** package?

The **rmarkdown** package helps you create dynamic documents that combine code, rendered output (such as figures), and markdown-formatted text. n fact, in RStudio now, you integrate R code into your Markdown document and render as HTML/pdf/Word in the click of a button! 

{{< columns class="twocols" >}}
{{< column name="narrow-left" >}}

![](/css/images/hex/rmarkdown.png)

{{< /column >}}
{{< column name="wide-right" >}}

The easiest way to install the **rmarkdown** package is from within the RStudio IDE, but you don’t need to explicitly install it or load it, as RStudio automatically does both when needed. 

If you want to use the rmarkdown package outside of RStudio, you can install the package from CRAN as follows:


```r
install.packages("rmarkdown")
```

{{< /column >}}
{{< /columns  >}}

If you are not using the RStudio IDE, please install Pandoc (http://pandoc.org). Instructions are available on the reference site (https://pandoc.org/installing.html).


## What's next?

In this series, we'll focus on using the **rmarkdown** package to create `.Rmd` documents that integrate narrative text, code, and its output. While the ecosystem includes many additional packages that allow you to extend R Markdown, each builds off the **rmarkdown** package. In fact, this website was also written in R Markdown, and its full source is publicly available in the GitHub repository:.
