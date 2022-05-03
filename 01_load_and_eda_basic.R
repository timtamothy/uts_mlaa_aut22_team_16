# Load Packages ----
library(tidyverse)
library(here)
library(readr)
library(future.apply)
library(dplyr)
library(httr)
library(jsonlite)
library(data.table)
library(feather)
library(DataExplorer)
library(funModeling)
library(Hmisc)
library(janitor)

# Load Data -----

df1 <- read_csv(here("AT2_credit_train.csv"))


# Basic EDA function -----

basic_eda <- function(data)
{
  glimpse(data)
  print(status(data))
  freq(data)
  print(profiling_num(data))
  plot_num(data)
  describe(data)
}


# Basic EDA on Dataset -----

basic_eda(df1)

##### notable errors:
# 1. Types are all incorrect for
# - gender, education, marriage, pay 0, 2, 3, 4, 5, 6
# - pay 1, 2, 3, 4, 5, 6


# 2. NAs
# - 3 NAs exist for gender

# 3. Data entry error
# - Gender has a one value with a max of 2113
# - Age has individuals over age 150
# - Pay 'Value' is supposed to be 0, 1
# - default is "yes" and "no"


# 4. Distribution Errors
# - Pay values have majority left skew, right tail
# - Bill amount, Right tail