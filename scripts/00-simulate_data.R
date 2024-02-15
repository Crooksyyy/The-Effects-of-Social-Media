#### Preamble ####
# Purpose: Simulates data set used in analysis to be able to test data
# Author: Gavin Crooks and Samarth Rajani
# Date: 14 February 2024 
# Contact: gavin.crooks@mail.utoronto.ca or samarth.rajani@mail.utoronto.ca
# Pre-requisites: N/A

#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
# Set seed for reproducibility
set.seed(93)

# Number of samples
num_samples <- 5000

# Household Income 
income_categories <- c("$60,000 to $74,999", "$50,000 to $59,999",  "$40,000 to $49,999",
                       "$100,000 to $124,999", "Prefer not to answer", "$10,000 to $19,999",
                       "$75,000 to $99,999", "0 to $9,999", "$20,000 to $29,999",
                       "$30,000 to $39,999", "$125,000 to $149,999", "$150,000 and up")
household_income <- sample(income_categories, size = num_samples, replace = TRUE)

# Ethnicity categories
race_categories <- c("Asian or Pacific Islander", "White / Caucasian", "Hispanic",
                     "Black or African American", "other")
race <- sample(race_categories, size = num_samples, replace = TRUE,
               prob = c(0.075,0.75,0.125,0.9,0.1))

# Follows Politics 
follow_politics_categories <- c("Somewhat closely", "Not at all closely", 
                         "Very closely", "Rather closely")
follows_politics <- sample(follow_politics_categories, size = num_samples, replace = TRUE,
                           prob = c(0.2,0.2,0.25,0.35))

# Follows Trump 
follows_trump_categories <- c("Somewhat closely", "Not at all closely", 
                              "Very closely", "Rather closely")
follows_trump <- sample(follows_trump_categories, size = num_samples, replace = TRUE)

# Create a data frame
sim_data <- data.frame(
  Household_Income = household_income,
  Race = race,
  Follows_Politics = follows_politics,
  Follows_Trump = follows_trump
)

# Display simulated data 
head(data)

# Save simulated data
write_csv(sim_data,"inputs/data/simulated_data.csv" )




