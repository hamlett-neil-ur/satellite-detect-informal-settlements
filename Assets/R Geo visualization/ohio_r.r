library(leaflet)
library(dplyr)
library(sp)
library(rgdal)

ohio <- readOGR("Ohio/ohio_final_fixed.geojson")
bins <- c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)
pal <- colorBin("YlOrRd", domain = ohio$Turnout.Percentage, bins = bins)
labels <- sprintf(
  "<strong>%s</strong><br/>Active Precint Name: %s<br/>Media Market: %s<br/>Registered Voters: %g<br/>Total Voters: %g<br/>Turnout Percentage: %g",
  ohio[[1]], ohio[[2]], ohio[[3]], ohio[[4]], ohio[[5]], ohio[[6]]
) %>% lapply(htmltools::HTML)


leaflet(ohio) %>%
	addProviderTiles(providers$CartoDB.Positron) %>%
	addPolygons(stroke = FALSE, smoothFactor = 0.3, fillOpacity = 0.8,
    fillColor = ~pal(Turnout.Percentage), label = labels,
  labelOptions = labelOptions(
    style = list("font-weight" = "normal", padding = "3px 8px"),
    textsize = "15px",
    direction = "auto")) %>%
    addLegend(pal = pal, values = ~Turnout.Percentage, opacity = 0.7,
    position = "bottomright", title = "Turnout Percentage")