###############################################################################
# FILE: run_analysis.R
# PURPOSE:
#   - Process Samsung Galaxy S smartphone accelerometer data.
#   - Clean and transform it into a tidy dataset.
#   - Save the output to "tidy_data.txt".
#   - Refer to README.md for more info.
###############################################################################

library(dplyr)

# -----------------------------------------------------------------------------
# Step 0A: Download and unzip data if not already present
# -----------------------------------------------------------------------------

zip_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file <- "UCI HAR Dataset.zip"
data_path <- "UCI HAR Dataset"

if (!file.exists(zip_file)) {
  download.file(zip_url, zip_file, mode = "wb
