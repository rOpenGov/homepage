library(glue)
library(fs)
library(dplyr)
library(stringr)

indexes <- dir_ls(path = "./content/post/", glob = "*.Rmd|*.md", recurse = TRUE)
for (i in seq_along(indexes)){
  lns <- readLines(indexes[i])
  if (any(grepl("slug:", lns))) next()
  pre_title <- lns[1:2]
  post_title <- lns[3:length(lns)]
  title <- str_trim(sub("^title:", "", lns[grepl("title:", lns)]))
  # lets sanitise
  slug <- janitor::make_clean_names(title)
  newlns <- c(pre_title,
    glue('slug: "{slug}"'),
    post_title)
  writeLines(newlns, indexes[i])
  writeLines(newlns, "./tmp.Rmd")
  }
