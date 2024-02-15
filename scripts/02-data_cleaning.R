#### Preamble ####
# Purpose: Clean Data for Analysis 
# Author: Gavin Crooks and Samarth Rajani
# Date: Feb 12, 2024
# Contact: gavin.crooks@mail.utoronto.ca or samarth.rajani@mail.utoronto.ca
# License: MIT
# Pre-requisites: 01-download_data.R

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("inputs/data/base_data.csv")
cleaned_data <- select(raw_data, hhld_inc, race, follow_politics, follow_trump)
cleaned_data <- cleaned_data %>% 
  drop_na()


View(cleaned_data)
#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")

