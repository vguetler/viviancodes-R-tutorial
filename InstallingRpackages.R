---
title: "Efficient Way to Install and Load R Packages"
author: "Vivian Guetler"
date: "5/13/2021"
---
  
# Efficient Way to Install and Load R Packages

# Install packages using install.packages("package_name")
# Load libraries using library(package_name)

## Inefficient way

install.packages("ggcorrplot") # visualizing a correlation matrix
install.packages("tidymodels") # for machine learning models
install.packages("patchwork") # combines ggplots
install.packages("janitor") # examines and cleans data

## The efficient way

install.packages(c("ggcorrplot", "tidymodels", "patchwork", "janitor"))

###

# Load library

library(ggcorrplot)
library(tidymodels)
library(patchwork)
library(janitor)

###

# Unload a package

detach("package:janitor", unload = TRUE)

exists("janitor")

# Uninstall a package

remove.packages("ggcorrplot")


###



