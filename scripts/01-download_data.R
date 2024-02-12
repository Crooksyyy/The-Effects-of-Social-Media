#### Preamble ####
# Purpose: Saves the Data into Repo as CSV 
# Author: Gavin Crooks and Samarth Rajani
# Date: Feb 12, 2024
# Contact: gavin.crooks@mail.utoronto.ca or samarth.rajani@mail.utoronto.ca
# License: MIT
# Pre-requisites: N/A



#### Workspace setup ####
library(haven)
library(tidyverse)

#### Open data ####
base_data <- read_dta("Desktop/112081-V1 2/baseline_anonymous.dta")

#### Save data ####

write_csv(base_data, "inputs/data/base_line_data.csv") 
         
