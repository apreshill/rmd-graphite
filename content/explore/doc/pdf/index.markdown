---
title: "PDF"
weight: 2
tags: [tufte, rmarkdown, bookdown, pagedown]
categories: [pdf]
formats: [pdf]
description: | 
  Present, exchange, and print documents reliably.
---

{{< packages "rmarkdown" >}}


{{< packages "tufte" >}}

{{< packages "bookdown" >}}

```
output:
  rmarkdown::pdf_document: default
  bookdown::pdf_document2: default
  tufte::tufte_handout: default
```
