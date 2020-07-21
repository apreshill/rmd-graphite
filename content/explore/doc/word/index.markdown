---
title: "Word document"
weight: 3
tags: [rmarkdown, bookdown]
categories: [single]
description: | 
  Prepare documents that fit in Office workflows.
---

{{< packages "rmarkdown" >}}


{{< packages "bookdown" >}}

```
output:
  rmarkdown::word_document: default
  bookdown::word_document2: default
```
