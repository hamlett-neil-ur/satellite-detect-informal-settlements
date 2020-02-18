library(leaflet)
library(dplyr)
library(sp)
library(raster)
library(htmlwidgets)

setwd('C:/Users/onomi/Desktop/dsi/projects/DC_DSI10_Team5_Client_Proj/Assets')
city <- geojsonio::geojson_read("merged.geojson", what = "sp")

bins <- c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)

labels <- sprintf(
  "<strong>City: %s</strong>,
  <br/>Total Population: %s
  <br/>Population Density: %s
  <br/>Number of households: %s
  <br/>Average household size: %s
  <br/>Female headed households: %s
  <br/>Housing owned/paying off: %s
  <br/>Flush toilet connected to sewerage: %s
  <br/>Electricity for lighting: %s",
  city[[1]], city[[2]], city[[6]], city[[10]], city[[11]], city[[12]], city[[13]], city[[14]], city[[16]]
) %>% lapply(htmltools::HTML)

lighting <- city$map_output_Electricity.for.lighting
pal <- colorBin("YlOrRd", domain = lighting, bins = bins)
# r <- raster("population_zaf_2018-10-01.tif")

city <- leaflet(city) %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addPolygons(
    stroke = TRUE, smoothFactor = 0.3, fillOpacity = 0.7,
    fillColor = ~pal(lighting), label = labels,
    labelOptions = labelOptions(
      style = list("font-weight" = "normal", padding = "3px 8px"),
      textsize = "15px",
      direction = "auto")) %>%
  addLegend(pal = pal, values = ~city$map_output_Electricity.for.lighting, opacity = 0.7,
            position = "bottomright", title = "Percent Connected to Electricity") #%>%
  # addRasterImage(r, colors = pal, opacity = 0.8)

  # saveWidget(city, file="city.html")