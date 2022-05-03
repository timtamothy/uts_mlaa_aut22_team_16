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


# A. Change Pay Amount values to 0 - 1


# B. Remove Gender NAs


# C. Remove Gender max of 2113


# D. Remove Unrealistic Ages or remove the 1 in front of hundred


# E. Change Default to 0 and 1


# F. Change the type from double to category/factors