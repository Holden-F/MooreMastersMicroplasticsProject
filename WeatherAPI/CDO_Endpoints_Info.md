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
