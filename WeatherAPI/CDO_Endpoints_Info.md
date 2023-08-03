# Climate Data Online: Web Service Endpoint Documentation Info

## Endpoints

| Endpoint             | Description |
|----------------------|-------------|
| `/datasets`          | A dataset is the primary grouping for data at NCDC. |
| `/datacategories`    | A data category is a general type of data used to group similar data types. |
| `/datatypes`         | A data type is a specific type of data that is often unique to a dataset. |
| `/locationcategories`| A location category is a grouping of similar locations. |
| `/locations`         | A location is a geopolitical entity. |
| `/stations`          | A station is a any weather observing platform where data is recorded. |
| `/data`              | A datum is an observed value along with any ancillary attributes at a specific place and time. |

## Example API Calls for Different Endpoint

### Datasets 

```markdown
Fetch all available datasets
https://www.ncei.noaa.gov/cdo-web/api/v2/datasets

Fetch all information about the GSOY dataset specifically:
https://www.ncei.noaa.gov/cdo-web/api/v2/datasets/GSOY

Fetch all available datasets with the Temperature at the time of observation (TOBS) data type:
https://www.ncei.noaa.gov/cdo-web/api/v2/datasets?datatypeid=TOBS

Fetch all available datasets with data for a given set of stations:
https://www.ncei.noaa.gov/cdo-web/api/v2/datasets?stationid=COOP:310090&stationid=COOP:310184&stationid=COOP:310212
```

### Data Categories
```markdown
Fetch all available data categories:
https://www.ncei.noaa.gov/cdo-web/api/v2/datacategories?limit=41

Fetch all information about the Annual Agricultural dataset specifically:
https://www.ncei.noaa.gov/cdo-web/api/v2/datacategories/ANNAGR

Fetch data categories for a given set of locations:
https://www.ncei.noaa.gov/cdo-web/api/v2/datacategories?locationid=CITY:US390029&locationid=FIPS:37
```

### Data Types
```markdown
Fetch available data types:
https://www.ncei.noaa.gov/cdo-web/api/v2/datatypes

Fetch more information about the ACMH data type id:
https://www.ncei.noaa.gov/cdo-web/api/v2/datatypes/ACMH

Fetch data types with the air temperature data category:
https://www.ncei.noaa.gov/cdo-web/api/v2/datatypes?datacategoryid=TEMP&limit=56

Fetch data types that support a given set of stations:
https://www.ncei.noaa.gov/cdo-web/api/v2/datatypes?stationid=COOP:310090&stationid=COOP:310184&stationid=COOP:310212
```

### Location Categories
```markdown
Fetch all available location categories:
https://www.ncei.noaa.gov/cdo-web/api/v2/locationcategories

Fetch more information about the climate region location category:
https://www.ncei.noaa.gov/cdo-web/api/v2/locationcategories/CLIM_REG

Fetch available location categories that have data after 1970:
https://www.ncei.noaa.gov/cdo-web/api/v2/locationcategories?startdate=1970-01-01
```

### Locations
```markdown
Fetch available locations:
https://www.ncei.noaa.gov/cdo-web/api/v2/locations

Fetch more information about location id FIPS:37:
https://www.ncei.noaa.gov/cdo-web/api/v2/locations/FIPS:37

Fetch available locations for the GHCND (Daily Summaries) dataset:
https://www.ncei.noaa.gov/cdo-web/api/v2/locations?datasetid=GHCND

Fetch all U.S. States:
https://www.ncei.noaa.gov/cdo-web/api/v2/locations?locationcategoryid=ST&limit=52

Fetch list of city locations in descending order:
https://www.ncei.noaa.gov/cdo-web/api/v2/locations?locationcategoryid=CITY&sortfield=name&sortorder=desc

Fetch list of zip code locations in descending order:
https://www.ncei.noaa.gov/cdo-web/api/v2/locations?locationcategoryid=ZIP&sortfield=name&sortorder=desc
```

### Stations
```markdown
Fetch all available stations:
https://www.ncei.noaa.gov/cdo-web/api/v2/stations

Fetch all information about the Abbeville AL station specifically:
https://www.ncei.noaa.gov/cdo-web/api/v2/stations/COOP:010008

Fetch all the stations in North Carolina, US (FIPS:37):
https://www.ncei.noaa.gov/cdo-web/api/v2/stations?locationid=FIPS:37

Fetch a list of stations that support a given set of data types:
https://www.ncei.noaa.gov/cdo-web/api/v2/stations?datatypeid=EMNT&datatypeid=EMXT&datatypeid=HTMN
```

### Data
```markdown
Fetch data from the GHCND dataset (Daily Summaries) for zip code 28801, May 1st of 2010:
https://www.ncei.noaa.gov/cdo-web/api/v2/data?datasetid=GHCND&locationid=ZIP:28801&startdate=2010-05-01&enddate=2010-05-01

Fetch data from the PRECIP_15 dataset (Precipitation 15 Minute) for COOP station 010008, for May of 2010 with metric units:
https://www.ncei.noaa.gov/cdo-web/api/v2/data?datasetid=PRECIP_15&stationid=COOP:010008&units=metric&startdate=2010-05-01&enddate=2010-05-31

Fetch data from the GSOM dataset (Global Summary of the Month) for GHCND station USC00010008, for May of 2010 with standard units:
https://www.ncei.noaa.gov/cdo-web/api/v2/data?datasetid=GSOM&stationid=GHCND:USC00010008&units=standard&startdate=2010-05-01&enddate=2010-05-31
```
