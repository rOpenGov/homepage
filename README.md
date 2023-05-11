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

## Using image shortcodes

It is relatively straightforward to add images to plain markdown documents:

```
![Alt text](path/to/img.png)
```

This, however, does not include more granular options such as controlling the alignment, size and captioning images. Instead of resorting to writing raw html, it is possible to use the following shortcode instead:

```
{{< img src="path/to/img.png"
caption="Caption text"
width="800"
alt="Alt text"
link="link/to/full/size/img.png"
align="center" >}}
```

## Blogdown tutorial

For more info, see [blogdown manual](https://bookdown.org/yihui/blogdown/).
