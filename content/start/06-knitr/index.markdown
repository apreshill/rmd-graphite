---
title: "Code Chunks"
weight: 8
description: | 
  Use parameters to re-render the same output with different versions of your data, or depending on different values present in your data.
---


more of a summary: here are the chunk options we've shown so far for:

+ how your code WORKS (eval, error for individual chunks)
+ Style how code prints w/ knitr chunk options (include (+ output), echo)
+ Style your output w/ knitr chunk options (collapse, comment, message, warning, results)
+ Style your figures w/ knitr chunk options (out.width, fig.show, fig.align, fig.asp, fig.cap, fig.alt)

also covered:
+ Organize your code with knitr chunk labels (kebabs, not snakes)
+ setup chunk for setting global options (+ fig.path!)

knit_exit()
include_graphics()
ref.label()!

## Run chunks selectively

Running chunks selectively and systematically is a great way to develop code, and also a good strategy for troubleshooting.

run all chunks above/all below/just all 

---

, R Markdown displays data frames and matrices as they would be in the R terminal (in a monospaced font). If you prefer that data be displayed with additional formatting you can use the `knitr::kable` function, as in the .Rmd file below. This file is available [here](https://rstudio.cloud/project/181946) on RStudio Cloud. 

{{< test-drive url="https://rstudio.cloud/project/181946" >}}

![](tables-1-kable.png)

Note the use of the `results='asis'` chunk option. This is required to ensure that the raw table output isn’t processed further by knitr.
