## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  eval = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(tourr)

## -----------------------------------------------------------------------------
# generate 3D cube vertices
cube <- geozoo::cube.iterate(3)
# data is stored points, edges contains the needed two column matrix for connecting points
cube$points
cube$edges
# call grand tour with the scatterplot (xy) display, turning off axes
animate_xy(cube$points, edges = cube$edges, axes = "off")

## -----------------------------------------------------------------------------
cube5 <- geozoo::cube.iterate(5)
animate_xy(cube5$points, edges = cube5$edges, axes = "off")

## -----------------------------------------------------------------------------
# get centroids of 3 clusters of the flea data
n <- nrow(flea)
flea_centroids <- stats::kmeans((flea[,-7]), 3)$centers
flea_aug <- rbind(flea[,-7], flea_centroids)
flea_edges <- matrix(c(n+1, n+2, n+1, n+3, n+2, n+3), ncol=2, byrow = TRUE)
animate_xy(flea_aug, edges = flea_edges)

