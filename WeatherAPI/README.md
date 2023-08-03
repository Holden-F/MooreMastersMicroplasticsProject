# Using Climate Data Online (CDO) for Microplastic Pollution Research

The [Climate Data Online (CDO)](https://www.ncei.noaa.gov/access/cdo/cdo.html) from the National Centers for Environmental Information (NCEI) provides access to a wealth of environmental data, including weather and climate data. This data can be extremely valuable to researchers studying microplastic pollution in several ways:

## Understanding Weather Patterns

Weather patterns can influence the distribution and concentration of microplastics in the environment. For example, heavy rainfall can wash microplastics into waterways, while wind can carry microplastics over long distances. By analyzing weather data from the CDO, researchers can gain insights into these patterns.

## Correlation Analysis

Researchers can use the climate and weather data to find correlations between weather patterns and microplastic pollution levels. This could help identify key weather events or patterns that significantly contribute to microplastic pollution.

## Modeling and Prediction

The historical weather and climate data available from the CDO can be used to build predictive models that forecast microplastic pollution levels based on expected weather patterns. This could be particularly useful for planning clean-up efforts or for informing policy decisions.

## Geographical Analysis

The CDO provides data for various locations, which can help researchers understand geographical variations in microplastic pollution. For instance, areas with higher rainfall might have higher levels of microplastic pollution due to runoff.

## Long-term Climate Impact Studies

Long-term climate data can help researchers understand the impact of climate change on microplastic pollution. Changes in weather patterns over time due to climate change could potentially influence the distribution and concentration of microplastics.

## Seasonal Variations

The data from CDO can help in understanding the seasonal variations in microplastic pollution. Certain seasons may have higher levels of pollution due to factors such as increased human activity or weather events.

> **See Files:** In the folder there is a file for setting up your API called "CDO_API_Setup.R", as well as another file called "API_Call_Example.R" which gives you a basic API call function. Also see the file "CDO_Examples" to learn and filter through the different datasets.


---

# Summary of Dataset Types and Their Parameters

| uid                  | mindate     | maxdate     | name                        | datacoverage | id        |
|----------------------|-------------|-------------|-----------------------------|--------------|-----------|
| gov.noaa.ncdc:C00861 | 1763-01-01  | 2023-07-28  | Daily Summaries             | 1.00         | GHCND     |
| gov.noaa.ncdc:C00946 | 1763-01-01  | 2023-07-01  | Global Summary of the Month | 1.00         | GSOM      |
| gov.noaa.ncdc:C00947 | 1763-01-01  | 2023-01-01  | Global Summary of the Year  | 1.00         | GSOY      |
| gov.noaa.ncdc:C00345 | 1991-06-05  | 2023-07-30  | Weather Radar (Level II)    | 0.95         | NEXRAD2   |
| gov.noaa.ncdc:C00708 | 1994-05-20  | 2023-07-28  | Weather Radar (Level III)   | 0.95         | NEXRAD3   |
| gov.noaa.ncdc:C00821 | 2010-01-01  | 2010-01-01  | Normals Annual/Seasonal     | 1.00         | NORMAL_ANN|
| gov.noaa.ncdc:C00823 | 2010-01-01  | 2010-12-31  | Normals Daily               | 1.00         | NORMAL_DLY|
| gov.noaa.ncdc:C00824 | 2010-01-01  | 2010-12-31  | Normals Hourly              | 1.00         | NORMAL_HLY|
| gov.noaa.ncdc:C00822 | 2010-01-01  | 2010-12-01  | Normals Monthly             | 1.00         | NORMAL_MLY|
| gov.noaa.ncdc:C00505 | 1970-05-12  | 2014-01-01  | Precipitation 15 Minute     | 0.25         | PRECIP_15 |
| gov.noaa.ncdc:C00313 | 1900-01-01  | 2014-01-01  | Precipitation Hourly        | 1.00         | PRECIP_HLY|
