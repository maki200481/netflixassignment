# Loading the ggplot library
library(ggplot2)

#my path 
path = "C:\\Users\\ekpiwhre nwamaka\\Downloads\\netflix_data.csv" 

# Load data
Netflix_shows_movies <- read.csv(path)

# Checking if 'rating' needs to be converted to factor
Netflix_shows_movies$rating <- factor(Netflix_shows_movies$rating)

# Creating the bar plot for ratings distribution
ggplot(Netflix_shows_movies, aes(x = rating)) +
  geom_bar(fill = "darkblue") +
  labs(title = "Distribution of Ratings on Netflix",
       x = "Rating",
       y = "Number of Titles") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
