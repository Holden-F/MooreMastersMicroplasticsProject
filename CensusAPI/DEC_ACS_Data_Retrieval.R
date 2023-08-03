#To connect to the US Census Bureau API with R, we can use the tidycensus package. This package helps to retrieve both decennial and ACS (American Community Survey) data from the Census Bureau API and load it into R.
#Before you start using the tidycensus package, you will need a Census Bureau API key. You can request one at this URL: https://api.census.gov/data/key_signup.html.
#Below is a general script for retrieving data from the Census Bureau API:

# Install and load the tidycensus and tidyverse package
install.packages(c("tidycensus", "tidyverse"))
library(tidycensus)
library(tidyverse)

# Set your census API key
census_api_key("your_api_key_here", install = TRUE, overwrite = TRUE)

# Get decennial Census data (example)
data <- get_decennial(geography = "state", variables = "P001001", year = 2010)

# View the data
print(data)


#or another dataset "American Community Survey"

# Get ACS data
data <- get_acs(geography = "state", variables = "B19013_001", year = 2021, survey = "acs5")

# View the data
print(data)

