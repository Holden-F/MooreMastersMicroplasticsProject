# Get the list of ALL available algorithms
algorithms <- qgis_algorithms()

# Print the list of algorithms
print(algorithms)



#Filter the list for algorithms to include only those related to raster images
raster_algorithms <- qgis_search_algorithms(algorithm = "raster")

# Filter the list of algorithms to include only those related to zonal statistics
zonal_statistics_algorithms <- qgis_search_algorithms(algorithm = "zonal")

# Filter the list of algorithms to include only those related to water resources
water_resources_algorithms <- qgis_search_algorithms(algorithm = "water")
