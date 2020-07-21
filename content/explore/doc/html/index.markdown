---
title: "HTML page"
type: learn-subsection
weight: 1
tags: [rmarkdown, distill, tufte, bookdown, pagedown]
categories: [html_page]
formats: [html_page]
description: | 
  Generate HTML pages with rich built-in features and styling options.
---
{{< packages "rmarkdown" >}}

{{< packages "distill" >}}

{{< packages "bookdown" >}}

{{< packages "tufte" >}}

{{< packages "flexdashboard" >}}

{{< packages "pagedown" >}}

```
output:
  rmarkdown::html_document: default
  bookdown::html_document2: default
  tufte::tufte_html: default
  flexdashboard::flex_dashboard: default
  distill::distill_article: default
  pagedown::html_paged: default
```


<!--html_preserve--><a href="data:text/x-markdown;base64,LS0tCnRpdGxlOiAiVGhlIERpc3RpbGwgYXJ0aWNsZSB0ZW1wbGF0ZSIKZGVzY3JpcHRpb246IHwKICBBIG5ldyBhcnRpY2xlIGNyZWF0ZWQgdXNpbmcgdGhlIERpc3RpbGwgZm9ybWF0LgphdXRob3I6CiAgLSBuYW1lOiBOb3JhIEpvbmVzIAogICAgdXJsOiBodHRwczovL2V4YW1wbGUuY29tL25vcmFqb25lcwogICAgYWZmaWxpYXRpb246IFNwYWNlbHkgU3Byb2NrZXRzCiAgICBhZmZpbGlhdGlvbl91cmw6IGh0dHBzOi8vZXhhbXBsZS5jb20vc3BhY2VseXNwcm9rZXRzCmRhdGU6ICJgciBTeXMuRGF0ZSgpYCIKb3V0cHV0OiBkaXN0aWxsOjpkaXN0aWxsX2FydGljbGUKLS0tCgpgYGB7ciBzZXR1cCwgaW5jbHVkZT1GQUxTRX0Ka25pdHI6Om9wdHNfY2h1bmskc2V0KGVjaG8gPSBGQUxTRSkKYGBgCgpEaXN0aWxsIGlzIGEgcHVibGljYXRpb24gZm9ybWF0IGZvciBzY2llbnRpZmljIGFuZCB0ZWNobmljYWwgd3JpdGluZywgbmF0aXZlIHRvIHRoZSB3ZWIuIAoKTGVhcm4gbW9yZSBhYm91dCB1c2luZyBEaXN0aWxsIGZvciBSIE1hcmtkb3duIGF0IDxodHRwczovL3JzdHVkaW8uZ2l0aHViLmlvL2Rpc3RpbGw+LgoKCgoKCg==" download="distill_article.Rmd">Download distill_article.Rmd</a><!--/html_preserve-->



<iframe src="/explore-examples/distill_article.html" width="672" height="400px"></iframe>
