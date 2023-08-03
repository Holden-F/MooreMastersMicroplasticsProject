# Setting Up the Climate Data Online (CDO) API

The [Climate Data Online (CDO)](https://www.ncdc.noaa.gov/cdo-web/webservices/v2) from the National Centers for Environmental Information (NCEI) offers web services that provide access to current data. This guide will help you get started with using these services.

## Step 1: Request a Token

To access the CDO web services, you first need to obtain a token. You can request a token from the [token request page](https://www.ncdc.noaa.gov/cdo-web/token). Each token will be limited to five requests per second and 10,000 requests per day.

## Step 2: Make a Request

To make a request, use the base URL with one of the endpoint paths appended. The base URL is `https://www.ncei.noaa.gov/cdo-web/api/v2/{endpoint}`. The token obtained from the token request page should be included in the header of your request.

Here's an example of how you might structure your API call in R:

```r
library(httr)

url <- "https://www.ncei.noaa.gov/cdo-web/api/v2/{endpoint}"
response <- GET(url, add_headers("token" = "Your_Token_Here"))

# Parse the response to JSON
content <- content(response, "parsed")
```

Replace {endpoint} with the desired endpoint, and "Your_Token_Here" with your actual token.

## Step 3: Get a Response
All responses are in JSON format and will be a single item or a collection of items with metadata. You can parse the JSON response in your preferred programming language to extract the data you need.

Remember to handle potential errors in your code, such as rate limits, timeouts, or unexpected response formats.
