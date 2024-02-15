#### Preamble ####
# Purpose: Simple Regression model of following trump vy income controlled by race and politically invovled
# Author: Gavin Crooks and Samarth Rajani
# Date: 14 February 2024 
# Contact: gavin.crooks@mail.utoronto.ca or samarth.rajani@mail.utoronto.ca
# Pre-requisites: 01-download_data and 02-data_cleaning  or 00-simulate_data 


#### Workspace setup ####
library(tidyverse)

#### Read data ####
cleaned_data <- read_csv("outputs/data/analysis_data.csv")

# Convert categorical variables to factors
# Code found from r bloggers
# https://www.r-bloggers.com/2020/10/hack-how-to-convert-all-character-variables-to-factors/
cleaned_data[sapply(cleaned_data, is.character)] <- lapply(cleaned_data[sapply(cleaned_data, is.character)], 
                                                           as.factor)

sapply(cleaned_data, class)



### Model data ####
model <- lm(factor(follow_trump) ~ factor(hhld_inc), cleaned_data)
summary(model)

#### Save model ####
saveRDS(
  first_model,
  file = "outputs/models/first_model.rds"
)


