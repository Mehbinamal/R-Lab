# Load necessary libraries
library(ggplot2)
library(dplyr)
library(GGally)  # For pair plot
library(tidyr)

# Load the iris dataset
data(iris)

# View the first few rows of the dataset
head(iris)
# Perform One-Way ANOVA to test if the sepal length differs by species
anova_result <- aov(Sepal.Length ~ Species, data = iris)

# Summarize the ANOVA result
summary(anova_result)
# Create a pair plot using the GGally package
ggpairs(iris, aes(color = Species))
