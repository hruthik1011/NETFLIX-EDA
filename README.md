# NETFLIX-EDA

# Netflix Content Analysis (2021)

## Description
R script for analyzing Netflix's content catalog, providing visualizations of content distribution, release patterns, and geographical representation.

## Requirements
- R
- Required packages: ggplot2, dplyr, tidyr

## Dataset
The analysis requires `netflix_titles_2021.csv` with information about Netflix's movies and TV shows catalog.

## Features
- Content type distribution analysis (Movies vs TV Shows)
- Year-wise release pattern visualization
- Top 10 countries content distribution

## Data Cleaning
The script performs:
- Duplicate removal
- Missing value handling (replaced with "Unknown" for character columns)
- Basic data validation

## Usage
1. Place `netflix_titles_2021.csv` in the working directory
2. Install required packages:
```R
install.packages(c("ggplot2", "dplyr", "tidyr"))
```
3. Run the analysis:
```R
source("netflix_analysis.R")
```

## Visualizations Generated
1. Bar chart of content types (Movies vs TV Shows)
2. Timeline of content releases by year
3. Distribution of content across top 10 countries
