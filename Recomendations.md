# Recommendations

When collecting microplastic data for geoprocessing, researchers should consider the following recommendations:

## Data Collection Standards:

Collect samples using a standardized method and accurately record and describe that method to ensure reliability, comparability and reproducibility. Post-collection processing, categorization and identity of the plastics should also be standardized.

## Spatial Reference: 

The dataset should contain Latitude and Longitude fields. All data should use the same coordinate reference system (CRS) to record positional data. Data needs to be accurately positioned on the Earth's surface, so include the coordinates with each location sampled. Confirm that the coordinates are in a coordinate system compatible with your GIS/QGIS program, usually WGS84 for global datasets.

 Do not use vague explanations of the sampling site. The CRS should be clearly documented in the metadata.

**Unique Identifiers:** It's a good practice to have a unique identifier for each point.

## Formatting: 

Certain formats are better suited to QGIS. Vector data formats, like shapefiles or GeoJSON are for discrete points, and raster data formats (like GeoTIFF) are for continuous spatial data.

## Attribute Data: 

Any attribute data associated with the spatial data should be clearly defined and consistently formatted. This might include information about the type, quantity, or color of microplastics at each location and the number of samples taken at each location.

If temporal analysis is part of your study, consider using exact date values in the field. All date values should be inserted as dd/mm/yyyy.


**Consistent Units:** Ensure that all measurements are in consistent units. For instance, the concentration field is in parts per cubic meter (p/m3). If there are other units of measurement in the same field, you may want to standardize them for consistency.

**Categorical Values:** Ensure that categorical values are consistent. For instance, the Season field seems to contain categories such as "Wet & Dry", "Dry", and "Wet". Confirm that the categorization is accurate and consistent for your analysis.

**Text Data:** The Morphology field contains multiple categorical data in a single cell, separated by commas. If you plan to analyze this data, you might want to consider breaking it into separate boolean fields or using one-hot encoding.

## Data Cleaning: 

The data should be thoroughly checked for errors before being used for geoprocessing. This might involve checking for and handling missing data, noting potential outliers, correcting errors in location. Check that the data types for each field are appropriate for the kind of data they hold. For example, Year should be an integer or a date type, while State and Season should be categorical or string types.

## Metadata: 

Include comprehensive metadata with the dataset so it can be correctly interpreted and used by others. This should describe what the data represents, collection methods, attribute value descriptions, any processing the samples went through, the coordinate system and identification methods. Any other important information for correctly utilizing the data should be added too.

## Data Visualization: 

When visualizing the data, consider how the type of map or chart representing it may affect its readability. For example, point data might be best represented as a dot map, while continuous data might be best represented as a choropleth or heat map. Also, consider the use of color, size, and other visual variables to represent attribute data.

## Reproducibility: 

Data processing and analysis, like sample collection, need to be reproducible. This means using scripts (like R scripts) to perform the analysis, rather than manual steps in a GUI. This makes it easier to repeat the analysis, check for errors, and modify the analysis if needed.

## Data Sharing: 

Consider how the data will be shared with others. This might involve publishing the data in a data repository, including it as supplementary material with a publication, or sharing it through a web map or online dashboard.

## Ethical Considerations: 

Data collection and sharing practices need to comply with ethical guidelines, particularly if the data involves sensitive or private information.
