#### Preamble ####
# Purpose: Saves the Data into Repo as CSV and as original dta file
# Author: Gavin Crooks and Samarth Rajani
# Date: Feb 12, 2024
# Contact: gavin.crooks@mail.utoronto.ca or samarth.rajani@mail.utoronto.ca
# Pre-requisites: N/A



#### Workspace setup ####
library(haven)
library(tidyverse)
library(data.table)

#### Download data ####
### Data can be downloaded from the URL below as file format does not allow it to be opened directly or from folder in repo 
# https://www.openicpsr.org/openicpsr/project/112081/version/V1/view?path=/openicpsr/112081/fcr:versions/V1/confidential/main_experiment/output/baseline_anonymous.dta&type=file

base_data <- read_dta("inputs/data/base_data.dta")

#### Save data ####
write_csv(base_data,"inputs/data/base_data.csv" )

