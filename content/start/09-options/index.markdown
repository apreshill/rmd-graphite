---
title: "Output options"
weight: 9
description: | 
  Use parameters to re-render the same output with different versions of your data, or depending on different values present in your data.
---


By default, R Markdown displays data frames and matrices as they would be in the R terminal (in a monospaced font). If you prefer that data be displayed with additional formatting you can use the `knitr::kable` function, as in the .Rmd file below. This file is available [here](https://rstudio.cloud/project/181946) on RStudio Cloud. 

{{< test-drive url="https://rstudio.cloud/project/181946" >}}

![](tables-1-kable.png)

Note the use of the `results='asis'` chunk option. This is required to ensure that the raw table output isn’t processed further by knitr.
