# homepage

The rOpenGov blogdown homepage; built with blogdown.

Build the site with R following the instructions below, the website
will then appears in (public/) directory. If you push to git main
branch, the changes become visible in 1-2 minutes in
[ropengov.org](http://ropengov.org). The site rebuilds from source
code, hence a local build is used only for testing purposes before push.


## Building the site

Build the site in R with:

```R
blogdown::build_site()
```

Launch  the site locally in R with:

```R
blogdown::serve_site()
```


## Blogdown tutorial

For more info, see [blogdown manual](https://bookdown.org/yihui/blogdown/).
