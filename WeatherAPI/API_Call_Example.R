#here's how you can make a simple API call to the CDO database in R using the httr package:

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

---

#Here is a more complex example of fetching for all teh available data categories for the GHCND dataset for May 5-10 2010 for the Zip code of 28801, in units "inches"

library(httr)
library(jsonlite)

# Define the base URL
base_url <- "https://www.ncei.noaa.gov/cdo-web/api/v2/data?datasetid=GHCND&locationid=ZIP:28801&units=inches&startdate=2010-05-01&enddate=2010-05-05"

# Define the headers
headers <- add_headers("token" = "Your_Token_Here")

# Define the parameters
params <- list(
  limit = "41"  # Number of records to fetch
)

# Make the request
response <- GET(url = base_url, headers = headers, query = params)

# Check if the request was successful
if (response$status_code == 200) {
  # Convert the response to JSON
  data <- content(response, "parsed")
  
  # Convert the data to a DataFrame
  df <- as.data.frame(data$results)
  
  # Print the DataFrame
  print(df)
} else {
  # Print an error message if the request was not successful
  print(paste("Request failed with status code", response$status_code))
}




