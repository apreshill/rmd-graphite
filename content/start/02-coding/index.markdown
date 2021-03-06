---
title: "Coding"
weight: 2
description: | 
  Use R Markdown to develop code and ideas together in one single reproducible document.
---


## Develop code

{{< columns class="twocols" >}}
{{< column name="even-left" >}}

The code inside your R Markdown documents will often start small, then grow as you work. 

It is totally natural to use your `.Rmd` as a scratchpad to develop code. Many users find that using `.Rmd` files helps them "code while thinking."

`.Rmd` files are designed to be used interactively in RStudio. You can use RStudio to test your code one chunk at a time, which we'll show now.

{{< /column >}}
{{< column name="even-right" >}}

![](pattern.png)

{{< /column >}}
{{< /columns  >}}


## Run code chunks

{{< columns class="twocols" >}}
{{< column name="even-left" >}}

For every gray code chunk, you'll notice a green arrow on the right: ![](run-button.png)


When you click "Run Current Chunk", the code is sent straight to your console. 

If you run the second chunk after the first, it also works! This is because RStudio is running your code chunks in your global environment, so it finds the `words` dataframe.

Results like plots and tables are appear inline in your document- but don't get confused, your source `.Rmd` file still has not changed.

{{< /column >}}
{{< column name="even-right" >}}

<iframe src="https://drive.google.com/file/d/1z_eFA5HhZm9cM6UhOGtXWNar5Ym1I-tU/preview" width="540" height="480"></iframe>

{{< /column >}}
{{< /columns  >}}

## Add new code chunks

{{< columns class="twocols" >}}
{{< column name="even-left" >}}

Now let's add a new code chunk. You can insert chunks any of three ways:

+ use the Add Chunk ![](chunk-button.png) button in the editor toolbar

+ use the keyboard shortcut **Ctrl + Alt + I** (OS X: **Cmd + Option + I**)

+ type ` ```{r} ` and ` ``` ` (the symbols are backticks)


{{< /column >}}
{{< column name="even-right" >}}

<iframe src="https://drive.google.com/file/d/1a-TZaQCKrpP144Oeky-xqUzkqP_J6tsb/preview" width="540" height="480"></iframe>

{{< /column >}}
{{< /columns  >}}

## Edit code chunks

Let's try a different color palette, available through a package called [`paletteer`](https://emilhvitfeldt.github.io/paletteer/), which you can install from CRAN:

```r
install.packages("paletteer")
```


The main differences here are:

1. We reorganized our code chunks so that all packages are loaded in the first code chunk, and
1. We used the `scale_color_paletteer_d()` function from the `paletteer` package to try out a new color palette.


## Set up your panes


{{< columns class="twocols" >}}
{{< column name="even-left" >}}

In RStudio, you can remove the inline preview in RStudio, and instead send your code output to the console. 

This can be done as a global setting in RStudio by going to **RStudio > Preferences > R Markdown**.

On that options page, uncheck the box shown on the right. 

Scroll down and click the "Apply" button for this setting to take effect.

{{< /column >}}
{{< column name="even-right" >}}

![](ide-inline.png)

{{< /column >}}
{{< /columns  >}}

Your workspace in RStudio then would look something like this:

![](ide-console.png)

## What's next?

In this section, we showed how you can develop R Markdown documents in RStudio, one code chunk at a time. An `.Rmd` file can be used to both save and execute code, and to create a reproducible record of what you did and how you did it. How to "knit" this record is up next.
