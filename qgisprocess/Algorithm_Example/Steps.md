# Example on Zonal Histogram for Land Use per Watershed Analysis using qgisprocess

In order to run this geoprocessing algorithm in R with the `qgisprocess` package, you will need the following data files:

1. Your dataset table of sample site locations with coordinates to correlate with watershed boundaries
2. A watershed boundary shapefile; You can find them [here](https://catalog.data.gov/dataset/watershed-boundary-dataset-wbd-usgs-national-map-downloadable-data-collection)
3. A land cover raster image for being clipped by the watershed area. You can find land cover raster files [here](https://www.mrlc.gov/data/nlcd-2019-land-cover-conus)

See following steps for instructions, and the associated files with the sample code per step.

---

## Step 1: Add Points Shapefile Using X Y coordinates from your table (path)

**Title:** Create points layer from table  
**ID:** createpointslayerfromtable

---

## Step 2: Extract Watershed Feature (Specific Polygon of the Watershed you want) by the points that intersect/contain with it

**Title:** Extract by location  
**ID:** extractbylocation

---

## Step 3: Clip Raster Image by Watershed Polygon Shapefile

**Title:** Clip raster by mask layer  
**ID:** cliprasterbymasklayer

---

## Step 4: Run Zonal Histogram processing tool to get raster values

**Title:** native:zonalhistogram  
**ID:** Zonal histogram
