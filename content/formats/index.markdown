---
title: "Formats"
layout: standard
---

## help me

yes hello

{{&lt; youtube w7Ft2ymGmfc &gt;}}

``` r
library(gt)

# function to style the tables for display
# used alongside CSS
style_table <- function(data, table_title) {
  data %>% 
  gt(id = "specialness") %>% 
  tab_header(
    title = table_title
  ) %>% 
  tab_options(
    table.align = "left",
    table.font.size = pct(80),
    heading.title.font.size = pct(90),
    column_labels.font.size = pct(90),
    table.width = "100%",
    row.striping.include_table_body = TRUE
  ) %>% 
  opt_css(
    css = "
    table tbody tr {
      background-color: transparent;
    }
    #specialness thead {
      color: red !important;
    }
    "
  )
}

make_two_gt <- function(gt_left, gt_right, ...) {
  htmltools::tagList(
  htmltools::tags$div(style = "width: 100%; border: 0px;",
    htmltools::tags$tr(
      htmltools::tags$td(style = glue::glue("width: 50%; vertical-align: top;"),
        gt:::as.tags.gt_tbl(gt_left)
      ),
      htmltools::tags$td(style = glue::glue("width: 50%; vertical-align: top;"),
        gt:::as.tags.gt_tbl(gt_right)
      )
    )
  )
)
}
```

``` r
library(tidyverse) ## dplyr provides the join functions
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──

    ## ✓ ggplot2 3.3.3     ✓ purrr   0.3.4
    ## ✓ tibble  3.1.1     ✓ dplyr   1.0.5
    ## ✓ tidyr   1.1.3     ✓ stringr 1.4.0
    ## ✓ readr   1.4.0     ✓ forcats 0.5.1

    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
superheroes <- tibble::tribble(
       ~name, ~alignment,  ~gender,          ~publisher,
   "Magneto",      "bad",   "male",            "Marvel",
     "Storm",     "good", "female",            "Marvel",
  "Mystique",      "bad", "female",            "Marvel",
    "Batman",     "good",   "male",                "DC",
     "Joker",      "bad",   "male",                "DC",
  "Catwoman",      "bad", "female",                "DC",
   "Hellboy",     "good",   "male", "Dark Horse Comics"
  )
publishers <- tibble::tribble(
  ~publisher, ~yr_founded,
        "DC",       1934L,
    "Marvel",       1939L,
     "Image",       1992L
  )

# superheroes will always be lilac
super_gt <- style_table(superheroes, "superheroes") %>% 
  tab_options(
    table.background.color = "#edc7fc" # lilac
  )
# publishers will always be light blue
pub_gt <- style_table(publishers, "publishers") %>% 
  tab_options(
    table.background.color = "#cce6f6" # light blue
  )
```

``` r
make_two_gt(super_gt, pub_gt)
```

<div style="width: 100%; border: 0px;">
<tr>
<td style="width: 50%; vertical-align: top;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#specialness .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: 0;
  margin-right: auto;
  color: #333333;
  font-size: 80%;
  font-weight: normal;
  font-style: normal;
  background-color: #edc7fc;
  width: 100%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#specialness .gt_heading {
  background-color: #edc7fc;
  text-align: center;
  border-bottom-color: #edc7fc;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#specialness .gt_title {
  color: #333333;
  font-size: 90%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #edc7fc;
  border-bottom-width: 0;
}

#specialness .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #edc7fc;
  border-top-width: 0;
}

#specialness .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#specialness .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#specialness .gt_col_heading {
  color: #333333;
  background-color: #edc7fc;
  font-size: 90%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#specialness .gt_column_spanner_outer {
  color: #333333;
  background-color: #edc7fc;
  font-size: 90%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#specialness .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#specialness .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#specialness .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#specialness .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #edc7fc;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#specialness .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #edc7fc;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#specialness .gt_from_md > :first-child {
  margin-top: 0;
}

#specialness .gt_from_md > :last-child {
  margin-bottom: 0;
}

#specialness .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#specialness .gt_stub {
  color: #333333;
  background-color: #edc7fc;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#specialness .gt_summary_row {
  color: #333333;
  background-color: #edc7fc;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#specialness .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#specialness .gt_grand_summary_row {
  color: #333333;
  background-color: #edc7fc;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#specialness .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#specialness .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#specialness .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#specialness .gt_footnotes {
  color: #333333;
  background-color: #edc7fc;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#specialness .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#specialness .gt_sourcenotes {
  color: #333333;
  background-color: #edc7fc;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#specialness .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#specialness .gt_left {
  text-align: left;
}

#specialness .gt_center {
  text-align: center;
}

#specialness .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#specialness .gt_font_normal {
  font-weight: normal;
}

#specialness .gt_font_bold {
  font-weight: bold;
}

#specialness .gt_font_italic {
  font-style: italic;
}

#specialness .gt_super {
  font-size: 65%;
}

#specialness .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}

table tbody tr {
  background-color: transparent;
}

#specialness thead {
  color: red !important;
}
</style>
<div id="specialness" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  <thead class="gt_header">
    <tr>
      <th colspan="4" class="gt_heading gt_title gt_font_normal" style>superheroes</th>
    </tr>
    <tr>
      <th colspan="4" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style></th>
    </tr>
  </thead>
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">alignment</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">gender</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">publisher</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left">Magneto</td>
      <td class="gt_row gt_left">bad</td>
      <td class="gt_row gt_left">male</td>
      <td class="gt_row gt_left">Marvel</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_striped">Storm</td>
      <td class="gt_row gt_left gt_striped">good</td>
      <td class="gt_row gt_left gt_striped">female</td>
      <td class="gt_row gt_left gt_striped">Marvel</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">Mystique</td>
      <td class="gt_row gt_left">bad</td>
      <td class="gt_row gt_left">female</td>
      <td class="gt_row gt_left">Marvel</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_striped">Batman</td>
      <td class="gt_row gt_left gt_striped">good</td>
      <td class="gt_row gt_left gt_striped">male</td>
      <td class="gt_row gt_left gt_striped">DC</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">Joker</td>
      <td class="gt_row gt_left">bad</td>
      <td class="gt_row gt_left">male</td>
      <td class="gt_row gt_left">DC</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_striped">Catwoman</td>
      <td class="gt_row gt_left gt_striped">bad</td>
      <td class="gt_row gt_left gt_striped">female</td>
      <td class="gt_row gt_left gt_striped">DC</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">Hellboy</td>
      <td class="gt_row gt_left">good</td>
      <td class="gt_row gt_left">male</td>
      <td class="gt_row gt_left">Dark Horse Comics</td>
    </tr>
  </tbody>
  
  
</table></div>
</td>
<td style="width: 50%; vertical-align: top;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#specialness .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: 0;
  margin-right: auto;
  color: #333333;
  font-size: 80%;
  font-weight: normal;
  font-style: normal;
  background-color: #cce6f6;
  width: 100%;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#specialness .gt_heading {
  background-color: #cce6f6;
  text-align: center;
  border-bottom-color: #cce6f6;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#specialness .gt_title {
  color: #333333;
  font-size: 90%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #cce6f6;
  border-bottom-width: 0;
}

#specialness .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 4px;
  border-top-color: #cce6f6;
  border-top-width: 0;
}

#specialness .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#specialness .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#specialness .gt_col_heading {
  color: #333333;
  background-color: #cce6f6;
  font-size: 90%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#specialness .gt_column_spanner_outer {
  color: #333333;
  background-color: #cce6f6;
  font-size: 90%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#specialness .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#specialness .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#specialness .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#specialness .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #cce6f6;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#specialness .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #cce6f6;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#specialness .gt_from_md > :first-child {
  margin-top: 0;
}

#specialness .gt_from_md > :last-child {
  margin-bottom: 0;
}

#specialness .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#specialness .gt_stub {
  color: #333333;
  background-color: #cce6f6;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#specialness .gt_summary_row {
  color: #333333;
  background-color: #cce6f6;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#specialness .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#specialness .gt_grand_summary_row {
  color: #333333;
  background-color: #cce6f6;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#specialness .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#specialness .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#specialness .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#specialness .gt_footnotes {
  color: #333333;
  background-color: #cce6f6;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#specialness .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#specialness .gt_sourcenotes {
  color: #333333;
  background-color: #cce6f6;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#specialness .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#specialness .gt_left {
  text-align: left;
}

#specialness .gt_center {
  text-align: center;
}

#specialness .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#specialness .gt_font_normal {
  font-weight: normal;
}

#specialness .gt_font_bold {
  font-weight: bold;
}

#specialness .gt_font_italic {
  font-style: italic;
}

#specialness .gt_super {
  font-size: 65%;
}

#specialness .gt_footnote_marks {
  font-style: italic;
  font-size: 65%;
}

table tbody tr {
  background-color: transparent;
}

#specialness thead {
  color: red !important;
}
</style>
<div id="specialness" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;"><table class="gt_table">
  <thead class="gt_header">
    <tr>
      <th colspan="2" class="gt_heading gt_title gt_font_normal" style>publishers</th>
    </tr>
    <tr>
      <th colspan="2" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style></th>
    </tr>
  </thead>
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">publisher</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1">yr_founded</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr>
      <td class="gt_row gt_left">DC</td>
      <td class="gt_row gt_center">1934</td>
    </tr>
    <tr>
      <td class="gt_row gt_left gt_striped">Marvel</td>
      <td class="gt_row gt_center gt_striped">1939</td>
    </tr>
    <tr>
      <td class="gt_row gt_left">Image</td>
      <td class="gt_row gt_center">1992</td>
    </tr>
  </tbody>
  
  
</table></div>
</td>
</tr>
</div>
<div class="columns">

<div class="column2">

<div class="formatSection">

<div class="formatSectionTitle">

Documents

</div>

<div class="formatTable">

<a href="https://bookdown.org/yihui/rmarkdown/notebook.html" class="formatTableRow">

<div class="formatName">

Notebook

</div>

<div class="formatDescription">

Interactive R Notebooks

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/html-document.html" class="formatTableRow">

<div class="formatName">

HTML

</div>

<div class="formatDescription">

HTML document w/ Bootstrap CSS

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/pdf-document.html" class="formatTableRow">

<div class="formatName">

PDF

</div>

<div class="formatDescription">

PDF document (via LaTeX template)

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/word-document.html" class="formatTableRow">

<div class="formatName">

Word

</div>

<div class="formatDescription">

Microsoft Word document (docx)

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/opendocument-text-document.html" class="formatTableRow">

<div class="formatName">

ODT

</div>

<div class="formatDescription">

OpenDocument Text document

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/rich-text-format-document.html" class="formatTableRow">

<div class="formatName">

RTF

</div>

<div class="formatDescription">

Rich Text Format document

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/markdown-document.html" class="formatTableRow">

<div class="formatName">

Markdown

</div>

<div class="formatDescription">

Markdown document (various flavors)

</div>

</a>

</div>

</div>

<div class="formatSection">

<div class="formatSectionTitle">

Presentations

</div>

<div class="formatTable">

<a href="https://bookdown.org/yihui/rmarkdown/ioslides-presentation.html" class="formatTableRow">

<div class="formatName">

ioslides

</div>

<div class="formatDescription">

HTML presentation with ioslides

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/revealjs.html" class="formatTableRow">

<div class="formatName">

reveal.js

</div>

<div class="formatDescription">

HTML presentation with reveal.js

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/slidy-presentation.html" class="formatTableRow">

<div class="formatName">

Slidy

</div>

<div class="formatDescription">

HTML presentation with W3C Slidy

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/beamer-presentation.html" class="formatTableRow">

<div class="formatName">

Beamer

</div>

<div class="formatDescription">

PDF presentation with LaTeX Beamer

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/powerpoint-presentation.html" class="formatTableRow">

<div class="formatName">

PowerPoint

</div>

<div class="formatDescription">

PowerPoint presentation

</div>

</a>

</div>

</div>

</div>

<div class="column2">

<div class="formatSection">

<div class="formatSectionTitle">

Journals

</div>

<div class="formatTable">

<a href="https://rstudio.github.io/distill/" class="formatTableRow">

<div class="formatName">

distill

</div>

<div class="formatDescription">

Scientific and technical writing for the web

</div>

</a>
<a href="https://github.com/rstudio/rticles" class="formatTableRow">

<div class="formatName">

jss\_article

</div>

<div class="formatDescription">

Journal of Statistical Software (JSS)

</div>

</a>
<a href="https://github.com/rstudio/rticles" class="formatTableRow">

<div class="formatName">

acm\_article

</div>

<div class="formatDescription">

Association for Computing Machinery (ACM)

</div>

</a>
<a href="https://github.com/rstudio/rticles" class="formatTableRow">

<div class="formatName">

acs\_article

</div>

<div class="formatDescription">

American Chemical Society (ACS) Journal

</div>

</a>
<a href="https://github.com/rstudio/rticles" class="formatTableRow">

<div class="formatName">

ctex

</div>

<div class="formatDescription">

Documents based on the LaTeX package ctex

</div>

</a>
<a href="https://github.com/rstudio/rticles" class="formatTableRow">

<div class="formatName">

elsevier\_article

</div>

<div class="formatDescription">

Submissions to Elsevier journals

</div>

</a>

</div>

</div>

<div class="formatSection">

<div class="formatSectionTitle">

More

</div>

<div class="formatTable">

<a href="flexdashboard/index.html" class="formatTableRow">

<div class="formatName">

flexdashboard

</div>

<div class="formatDescription">

Interactive dashboards

</div>

</a>
<a href="https://bookdown.org" class="formatTableRow">

<div class="formatName">

bookdown

</div>

<div class="formatDescription">

HTML, PDF, ePub, and Kindle books

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html" class="formatTableRow">

<div class="formatName">

Websites

</div>

<div class="formatDescription">

Multi-page websites

</div>

</a>
<a href="https://bookdown.org/yihui/blogdown/" class="formatTableRow">

<div class="formatName">

blogdown

</div>

<div class="formatDescription">

Customizable websites and blogs

</div>

</a>
<a href="https://pkgdown.r-lib.org/" class="formatTableRow">

<div class="formatName">

pkgdown

</div>

<div class="formatDescription">

Package documentation websites

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/tufte-handouts.html" class="formatTableRow">

<div class="formatName">

Tufte Handout

</div>

<div class="formatDescription">

Handouts in the style of Edward Tufte

</div>

</a>
<a href="https://bookdown.org/yihui/rmarkdown/r-package-vignette.html" class="formatTableRow">

<div class="formatName">

Package Vignette

</div>

<div class="formatDescription">

R package vignette (HTML)

</div>

</a>
<a href="github_document_format.html" class="formatTableRow">

<div class="formatName">

Github Document

</div>

<div class="formatDescription">

GitHub Flavored Markdown document.

</div>

</a>

</div>

</div>
