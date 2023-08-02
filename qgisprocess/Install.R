#SET UP
# Install the remotes package if it's not already installed
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

# Use remotes to install qgisprocess from GitHub
remotes::install_github("r-spatial/qgisprocess")

# Load the qgisprocess package
library(qgisprocess)

# Set up QGIS
# Replace "/path/to/qgis" with the actual path to your QGIS installation
qgis_path <- "/path/to/qgis"
qgisprocess::qgis_configure(path = qgis_path)

# Check if QGIS is available
qgis_available <- qgisprocess::qgis_available()
if (qgis_available) {
  print("QGIS is available.")
} else {
  print("QGIS is not available. Please check your QGIS installation and configuration.")
}

# Check the configuration and use cached data if available (optional)
qgisprocess::qgis_configure(use_cached_data = TRUE)
