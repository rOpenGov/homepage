---
title: Projects
author: ~
date: "2020-10-29"
slug: projects-en
categories:
  -
tags:
  -  
---

The rOpenGov R package development versions are maintained in [Github](https://github.com/ropengov/).

<div class="row">
```{r, results = "asis", echo = FALSE}
tbl <- readRDS("~/Desktop/ropengov.RDS")
tbl1 <- tbl[1:24,]

tbl_list <- list()
for (i in 1:nrow(tbl1)){
homepagelink <- ""
  if (grepl("http", tbl1$homepage[i])){
  homepagelink <- glue('<p class="card-text"><a href = "{tbl1$homepage[i]}">{sub("htt.+://", "",
 tbl1$homepage[i])}</a></p>')
  } else homepagelink <- ""
  
  # new row every time
  if (i %% 3 == 0){
    rowbreak <- '</div><div class="row">'
  } else rowbreak <- ""
  
glue('
  <div class="col-sm-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">{tbl1$name[i]}</h5>
        <p class="card-text">{tbl1$description[i]}</p>
        <p class="card-text"><i class="fas fa-star"></i>{tbl1$stargazers_count[i]}<br/><i class="fas fa-eye"></i>{tbl1$watchers_count[i]}</p>
  {homepagelink}
        <a href="https://github.com/ropengov/{tbl1$name[i]}" class="btn btn-primary">See at Github</a>
      </div>
    </div>
  </div>
     ') -> tbl_list[[i]]
}
htmltools::HTML(do.call("c", tbl_list))
```
</div>
