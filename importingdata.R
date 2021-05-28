---
title: "How to Import and Export Data in R"
author: "Vivian Guetler"
date: "5/28/2021"
---

# How to Import and Export Data in R

# Topics

# 1. Import data into R
# 2. Export data 

# Data formats
# Excel files .xls or xlsx
# CSVs (comma separated values) .csv
# TSVs .tsv
# TXTs .txt

# First step: set up working directory

getwd()
#setwd("")

# Let's load our files into the environment

## Excel files

# Install packages
install.packages("readxl") # reads excels files into R

# Load the library
library(readxl)

# Read in the data file

df_excel <- read_excel("data.xlsx")

# View
View(df_excel)
head(df_excel)

# CSVs

#Install package
install.packages("readr") 

# Load the library
library(readr)

# Read in CSV file

df_csv <- read_csv("data.csv")

## TSVs

df_tsv <- read_tsv("data.tsv")

## TXTs

df_txt <- read.table("data.txt", header = T)

### Export the files from R 

# How to export to a .csv
# write_tsv()
# write.csv()
# write.table()

write_csv(df_csv, "my_new_csv_file.csv")

# Data for tutorial are from nycflights dataset
# An R data package containing all out-bound flights from NYC 
# Link: <"https://raw.githubusercontent.com/jayleetx/nycflights/master/data-raw/planes.csv">

