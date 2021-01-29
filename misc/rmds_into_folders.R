# Manipulate the ./content-folder so that insted of
# ./content/page.md we have ./content/page/index.md OR
# ./content/post/a_good_post.md we have ./content/post/a_good_post/index.md

library(fs)
library(glue)
library(dplyr)

# First the "pages"

flies <- dir_ls("./content", glob = "*.Rmd|*.md", recurse = FALSE)

for (i in seq_along(flies)){
  if (grepl("index", flies[i])) next()
  fldr <- gsub("^.+/|\\.md", "", flies[i])
  path <- glue("./content/{fldr}")
  dir_create(path)
  file_copy(path = flies[i], new_path = glue("{path}/index.md"), overwrite = TRUE)
  file.remove(flies[i])
}
dir_ls("./content/", glob = "*.html") %>% file_delete()

# posts

flies <- dir_ls("./content/post/", glob = "*.Rmd|*.md", recurse = FALSE)

for (i in seq_along(flies)){
  if (grepl("index", flies[i])) next()
  fldr <- gsub("^.+/|\\.Rmd|\\.md", "", flies[i])
  path <- glue("./content/post/{fldr}")
  dir_create(path)
  if (grepl("\\.Rmd", flies[i])){
    file_copy(path = flies[i], new_path = glue("{path}/index.Rmd"), overwrite = TRUE)
  } else if (grepl("\\.md", flies[i])){
    file_copy(path = flies[i], new_path = glue("{path}/index.md"), overwrite = TRUE)
  }
  file.remove(flies[i])
}

dir_ls("./content/post/", glob = "*.html") %>% file_delete()

# finally you must change all index.Rmd|index.md file names in folders ending with ".fi" into index.fi.Rmd|index.fi.md
fi_fldrs <- dir_ls("./content/post/", type = "directory") %>% .[grepl("fi$", .)]
for (i in seq_along(fi_fldrs)){
  flie <- dir_ls(path = fi_fldrs[i], glob = ".Rmd|.md")
  file.rename(from = flie, sub("index.", "index.fi.", flie))
  dir_copy(path = fi_fldrs[i], new_path = sub(".fi$", "", fi_fldrs[i]))
  dir_delete(fi_fldrs[i])
  }


# plotdata -veks
# find ./ -type f -name "*.Rmd" -print0 | xargs -0 sed -i '' -e 's@plotdata/@@g'
