#### Preamble ####
# Purpose: Tests our simulated data, then test the actual data set to ensure data cleaning is done and the data set is as expected
# Author: Gavin Crooks and Samarth Rajani
# Date: 14 February 2024 
# Contact: gavin.crooks@mail.utoronto.ca or samarth.rajani@mail.utoronto.ca
# Pre-requisites: 01-download_data and 02-data_cleaning or 00-simulate_data 


#### Workspace setup ####
library(tidyverse)

#### Test data ####
# Open data
cleaned_data <- read_csv("outputs/data/analysis_data.csv")

# Test correct number of catergies for each variable
cleaned_data$follow_trump|>
  unique() %>% 
  length() == 4

cleaned_data$follow_politics|>
  unique() %>% 
  length() == 4

cleaned_data$race|>
  unique() %>% 
  length() == 6

cleaned_data$hhld_inc|>
  unique() %>% 
  length() == 12


#Test value types 
#is.character code from stack overflow
is.character(cleaned_data$hhld_inc)
is.character(cleaned_data$follow_trump)
is.character(cleaned_data$follow_politics)
is.character(cleaned_data$race)

# or 

sapply(cleaned_data, class)

