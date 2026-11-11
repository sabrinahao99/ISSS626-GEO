# Prepares data/geospatial/osm_pois_sg.gpkg from the Geofabrik extract
# malaysia-singapore-brunei-latest-free.shp.zip (downloaded 2026-11-09).
# Only the two POI layers are read; polygons are reduced to a representative point
# and everything is clipped to Singapore's land subzones.
library(sf); library(dplyr)
sf_use_s2(FALSE)
src <- commandArgs(trailingOnly = TRUE)[1]          # folder holding gis_osm_pois*_free_1.shp
sg  <- st_read("data/geospatial/MP19_SUBZONE_NO_SEA_PL.geojson", quiet = TRUE) |>
  st_transform(3414) |> st_make_valid() |> st_union() |> st_buffer(50)
pts <- st_read(file.path(src, "gis_osm_pois_free_1.shp"), quiet = TRUE) |>
  st_transform(3414) |> mutate(geom_type = "point")
pol <- st_read(file.path(src, "gis_osm_pois_a_free_1.shp"), quiet = TRUE) |>
  st_transform(3414) |> st_make_valid() |> st_point_on_surface() |> mutate(geom_type = "polygon")
poi <- bind_rows(pts, pol) |>
  select(osm_id, code, fclass, name, geom_type)
poi <- poi[st_intersects(poi, sg, sparse = FALSE)[, 1], ]
poi <- poi |> distinct(osm_id, .keep_all = TRUE)
st_write(poi, "data/geospatial/osm_pois_sg.gpkg", delete_dsn = TRUE, quiet = TRUE)
cat(nrow(poi), "Singapore POIs written\n")
