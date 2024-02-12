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

#### Download data ####
data1 <- read_dta("raw/anes_timeseries_2016.dta")
view(data1)
#### Save data ####
write_csv(data1, "inputs/data/raw__election_data.csv") 

         
