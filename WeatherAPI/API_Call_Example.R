#here's how you can make the same API call in R using the httr package:

library(httr)

url <- "https://www.ncei.noaa.gov/cdo-web/api/v2/data"
query <- list(
  datasetid = "GHCND",
  locationid = "LOCATION_ID",
  startdate = "YYYY-MM-DD",
  enddate = "YYYY-MM-DD"
)

response <- GET(url, query = query, add_headers("token" = "Your_Token_Here"))

# Parse the response to JSON
content <- content(response, "parsed")
