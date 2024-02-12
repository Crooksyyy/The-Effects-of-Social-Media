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
sms_data <- read_dta("~/Desktop/112081-V1 2/sms_anonymous.dta")
data1 <- read_dta("raw/anes_timeseries_2016.dta")
politics_data <- read_dta("~/Desktop/112081-V1 2/politics_anonymous.dta")
base_data <- read_dta("~/Desktop/112081-V1 2/baseline_anonymous.dta")


#### Save data ####
write_csv(data1, "inputs/data/raw_election_data.csv") 
write_csv(sms_data, "inputs/data/sms_data.csv")
write_csv(politics_data, "inputs/data/politics_data.csv")
write_csv(base_data,"inputs/data/base_data.csv" )

