# Climate Data Online: Web Services Documentation

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

## Examples

### Datasets

Fetch all available datasets:
```markdown
https://www.ncei.noaa.gov/cdo-web/api/v2/datasets

Fetch all information about the GSOY dataset specifically:
https://www.ncei.noaa.gov/cdo-web/api/v2/datasets/GSOY

Fetch all available datasets with the Temperature at the time of observation (TOBS) data type:
https://www.ncei.noaa.gov/cdo-web/api/v2/datasets?datatypeid=TOBS

Fetch all available datasets with data for a given set of stations:
https://www.ncei.noaa.gov/cdo-web/api/v2/datasets?stationid=COOP:310090&stationid=COOP:310184&stationid=COOP:310212
```

###Data Categories
```markdown
Fetch all available data categories:
https://www.ncei.noaa.gov/cdo-web/api/v2/datacategories?limit=41

Fetch all information about the Annual Agricultural dataset specifically:
https://www.ncei.noaa.gov/cdo-web/api/v2/datacategories/ANNAGR

Fetch data categories for a given set of locations:
https://www.ncei.noaa.gov/cdo-web/api/v2/datacategories?locationid=CITY:US390029&locationid=FIPS:37
```

###Data Types
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



