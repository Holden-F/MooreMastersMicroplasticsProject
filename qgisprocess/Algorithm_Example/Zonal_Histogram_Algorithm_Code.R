library(qgisprocess)
library(plotly)
library(dplyr)

# Define paths to your files
table_path <- "C:/path/to/your/Microplastic_Sample_Site_table.csv"
shapefile_path <- "C:/path/to/your/Watersheds.shp"
raster_file_path <- "C:/path/to/your/US Land Cover Raster 2019.tif"

create_pie_chart <- function() {
  # Step 1: Add Points Shapefile Using X Y coordinates from your table
  points <- qgis_run_algorithm("createpointslayerfromtable",
                               INPUT = table_path,
                               OUTPUT = "TEMPORARY_OUTPUT")
  points_output <- qgis_extract_output(points)

  # Step 2: Extract Watershed Feature by the points that intersect/contain with it
  watershed <- qgis_run_algorithm("extractbylocation",
                                  INPUT = shapefile_path,
                                  PREDICATE = [0], # intersects
                                  INTERSECT = points_output,
                                  OUTPUT = "TEMPORARY_OUTPUT")
  watershed_output <- qgis_extract_output(watershed)

  # Step 3: Clip Raster Image by Watershed Polygon Shapefile
  clip_result <- qgis_run_algorithm("cliprasterbymasklayer",
                                    INPUT = raster_file_path,
                                    MASK = watershed_output,
                                    OUTPUT = "TEMPORARY_OUTPUT")
  clip_output <- qgis_extract_output(clip_result)

  # Check if the file exists
  if (file.exists(clip_output)) {
    print("File exists.")
  } else {
    print("File does not exist.")
  }

  # Step 4: Run Zonal Histogram processing tool to get raster values
  zonal_hist_result <- qgis_run_algorithm("native:zonalhistogram",
                                          INPUT_RASTER = clip_output,
                                          RASTER_BAND = 1,
                                          INPUT_VECTOR = watershed_output,
                                          OUTPUT = "TEMPORARY_OUTPUT")
  zonal_hist_output <- qgis_extract_output(zonal_hist_result)

  # Define a mapping from original categories to new ones
category_mapping <- data.frame(
  Original = c("Developed, Open Space", "Developed, Low Intensity",
               "Developed, Medium Intensity", "Developed, High Intensity",
               "Pasture/Hay", "Cultivated Crops",
               "Barren Land (Rock/Sand/Clay)", "Decidous Forest", "Evergreen Forest",
               "Mixed Forest", "Shrub/Scrub", "Grasslands/Herbaceous", "Woody Wetlands",
               "Emergent Herbaceous Wetlands"),
  New = c("Urban Land Cover", "Urban Land Cover", "Urban Land Cover", "Urban Land Cover",
          "Agricultural Land Cover", "Agricultural Land Cover",
          "Natural Land Cover", "Natural Land Cover", "Natural Land Cover",
          "Natural Land Cover", "Natural Land Cover", "Natural Land Cover",
          "Natural Land Cover", "Natural Land Cover")
  )

  # Rebin the histogram results into the new categories
  zonal_hist_output <- zonal_hist_output %>%
    left_join(category_mapping, by = c("Label" = "Original")) %>%
    group_by(New) %>%
    summarise(Value = sum(Value))

  # Create a pie chart
  pie_chart <- plot_ly(zonal_hist_output, labels = ~New, values = ~Value, type = 'pie') %>%
    layout(title = "Zonal Histogram")

  return(pie_chart)
}
