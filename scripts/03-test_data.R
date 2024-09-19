#### Preamble ####
# Purpose: Tests if all the datas contain the information we want
# Author: Yuxuan Wei
# Date: 19 Sep 2024 
# Contact: shaw.wei@mail.itoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))