---
title: "Figures"
weight: 5
description: | 
  Use parameters to re-render the same output with different versions of your data, or depending on different values present in your data.
---




Knitting figures straight from code into your document is a beautiful thing. Any figure that you create in your `.Rmd` file will show up in your output when you knit. However, just as with code that you run in the console, plots that are simply saved and not printed will not show up. For example:


```r
line <- ggplot(words, aes(x = age, y = produces, color = lemma)) + 
  geom_smooth(se = FALSE, lwd = .5) +
  geom_point(size = 2)  +
  labs(x = "Age (months)", y = "Proportion of Children Producing") + 
  scale_color_paletteer_d("nationalparkcolors::Saguaro")
```


```r
line
```

<img src="figs/unnamed-chunk-3-1.png" width="672" />

By default, plots will show up immediately after the code the prints them.

## Style figure size & placement

It can often be hard to get your figures to show up in the right size and place in your knitted output. Some **knitr** chunk options that help with this are:


+ `out.width = '50%'` allows you resize a plot (here, shrunk to half its original size; for full width, set to `'100%'`)
+ `fig.align = 'center' / 'left' / 'right'` aligns the figure in the output
+ `fig.asp = 0.618` to control the ratio of height to width (this is the golden ratio, but any number will do: < 1 will be more wide than tall) 
+ `fig.show = 'hide' / 'hold'` hides plots entirely, or holds printing until end of a chunk

A neat trick you can use by combining these chunk options is to place two figures side-by-side:

````
```{r out.width='50%', fig.show='hold'}
plot1
plot2
```
````


```r
line
rose
```

<img src="figs/unnamed-chunk-4-1.png" width="50%" /><img src="figs/unnamed-chunk-4-2.png" width="50%" />



## Add figure captions & alt text

+ `fig.cap = "Oh caption, my caption!"` produces a figure caption; this will change the figure from inline to "floating".
+ `fig.alt = "Informative alt text"` produces alt text for a figure, meant for screen readers.


{{< columns class="split" >}}
{{< column name="split1" >}}
  hello
{{< /column >}}
{{< column name="split2" >}}
  goodbye
{{< /column >}}
{{< /columns  >}}

{{< columns class="side-by-side" >}}
{{< column name="side1" >}}
  hello
{{< /column >}}
{{< column name="side2" >}}
  goodbye
{{< /column >}}
{{< /columns  >}}
