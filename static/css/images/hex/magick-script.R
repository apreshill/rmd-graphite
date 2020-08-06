# resize all hexes

library(magick)
library(fs)
library(purrr)

rmd_pngs <- fs::dir_ls("static/css/images/hex", 
                       recurse = TRUE, 
                       glob = "*.png")

scale_hex <- function(hex) {
  hex %>%
    image_read() %>% 
    image_scale("736x853") %>% 
    image_write(hex, quality = 90)
}

purrr::map(rmd_pngs, scale_hex)