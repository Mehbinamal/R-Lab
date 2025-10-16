# Load necessary libraries
library(ggplot2)
library(dplyr)

# URL for Titanic dataset on GitHub
url <- "https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv"

# Load the Titanic dataset
titanic_data <- read.csv(url)

# View the first few rows of the dataset
head(titanic_data)
# Histogram of the 'Parch' (Number of Parents/Children Aboard)
ggplot(titanic_data, aes(x = Parch)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Number of Parents/Children Aboard (Parch)",
       x = "Number of Parents/Children Aboard (Parch)",
       y = "Frequency") +
  theme_minimal()
# Summary statistics of the Titanic dataset
summary(titanic_data)

# Check the structure of the dataset
str(titanic_data)
# Survival rate by gender
titanic_data %>%
  group_by(Sex) %>%
  summarise(Survival_Rate = mean(Survived, na.rm = TRUE)) %>%
  ggplot(aes(x = Sex, y = Survival_Rate, fill = Sex)) +
  geom_bar(stat = "identity", alpha = 0.7) +
  labs(title = "Survival Rate by Gender", y = "Survival Rate") +
  theme_minimal()
# Survival rate by class
titanic_data %>%
  group_by(Pclass) %>%
  summarise(Survival_Rate = mean(Survived, na.rm = TRUE)) %>%
  ggplot(aes(x = factor(Pclass), y = Survival_Rate, fill = factor(Pclass))) +
  geom_bar(stat = "identity", alpha = 0.7) +
  labs(title = "Survival Rate by Class", x = "Class", y = "Survival Rate") +
  theme_minimal()
# Survival rate by Age
ggplot(titanic_data, aes(x = Age, fill = factor(Survived))) +
  geom_density(alpha = 0.5) +
  labs(title = "Density Plot of Age by Survival Status", x = "Age", fill = "Survival Status") +
  theme_minimal()
# Correlation heatmap (for numerical features)
library(ggcorrplot)
corr_matrix <- cor(titanic_data[, c("Age", "Fare", "Pclass", "SibSp", "Parch")], use = "complete.obs")
ggcorrplot(corr_matrix, lab = TRUE, type = "lower", lab_size = 3)
# Customized box plot to compare age distribution of survivors vs non-survivors
ggplot(titanic_data, aes(x = factor(Survived), y = Age, fill = factor(Survived))) +
  geom_boxplot() +
  labs(title = "Age Distribution of Survivors vs Non-Survivors",
       x = "Survival Status", y = "Age") +
  scale_fill_manual(values = c("red", "green")) +
  theme_minimal()

