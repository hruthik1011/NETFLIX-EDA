#Netflix - Exploratory Data Analysis

#Taking Netflix dataset

# Load dataset
data <- read.csv("netflix_titles_2021.csv", header = TRUE)

# View the structure of the dataset
str(data)


#DATA CLEANING

# Check for missing values
colSums(is.na(data))

# Remove duplicates if any
data <- data[!duplicated(data), ]

# Handle missing values by filling NAs in character columns with "Unknown"
data <- data %>%
  mutate(across(where(is.character), ~ replace_na(., "Unknown")))

install.packages("ggplot2")
library(ggplot2)

# Bar chart of content type
#Count of Content Types (Movies vs. TV Shows)

ggplot(data, aes(x = type)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Distribution of Content Types on Netflix", x = "Type", y = "Count")

#Year-wise Count of Releases
# Bar chart of releases per year
ggplot(data, aes(x = release_year)) +
  geom_bar(fill = "orange") +
  labs(title = "Content Release per Year on Netflix", x = "Release Year", y = "Count")


#Top 10 Countries by Content Count

top_countries <- data %>%
  filter(country != "Unknown") %>%
  count(country, sort = TRUE) %>%
  top_n(10)

# Plotting top countries
ggplot(top_countries, aes(x = reorder(country, -n), y = n)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Top 10 Countries by Netflix Content Count", x = "Country", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
