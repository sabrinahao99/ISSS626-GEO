# Hands-on Exercise 4 Development Record

## Version

- Date: 2026-09-16
- Version: 1.0
- Page: `chap08.qmd`

## Scope

Exercise 4 follows the Spatial Weights and Applications workflow with the Hunan county boundary and 2012 development indicators.

## Implemented workflow

- Imported the supplied ESRI shapefile and Hunan indicator table.
- Joined `GDPPC` to the county geometry and rendered a regional development map.
- Preserved the course code for Queen and Rook contiguity neighbours.
- Computed centroid links, fixed-distance neighbours, connected components, and six-nearest-neighbour links.
- Added projected EPSG:32650 distance calculations for metric interpretation.
- Preserved inverse-distance, row-standardised, binary, self-neighbour, spatial lag, window average, and window sum steps.
- Added student observations explaining the analytical effect of each weight definition.

## Verification

- `spdep` 1.4.2 installed locally.
- `quarto render Hands-on_Ex/Hands-on_Ex04/chap08.qmd` completed with 131 processing steps.
- The rendered page returned `200` locally and its map assets were created under `_site/Hands-on_Ex/Hands-on_Ex04/`.
