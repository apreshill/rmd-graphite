# resize all thumbnails

library(magick)
library(fs)
library(purrr)

tb_files <- fs::dir_ls("content/explore/", 
                       recurse = TRUE, 
                       glob = "*thumbnail*")

paths_out <- fs::path_dir(tb_files) %>% 
  fs::path(., "tb", ext = "png")

imgs_in <- function(img_file, img_path) {
  tmp <- 
    img_file %>%
    image_read() %>% 
    image_crop("3000x1500") %>% 
    image_scale("500x300") 
  tmp %>% 
    image_write(img_path, quality = 100)
}

purrr::map2(tb_files, paths_out, imgs_in)

# check sizes
tb_new <- fs::dir_ls("content/explore/", 
                       recurse = TRUE, 
                       glob = "*tb*")

imgs_check <- function(img_file) {
  tmp <- 
    img_file %>%
    image_read() %>% 
    image_info()
  tmp 
}

purrr::map_df(tb_new, imgs_check)