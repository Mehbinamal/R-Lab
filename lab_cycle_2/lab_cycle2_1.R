# 1. Load the iris dataset (already available in R)
data(iris)

# 2. Create a scatterplot of Sepal.Length and Petal.Length
plot(iris$Sepal.Length, iris$Petal.Length,
     xlab = "Sepal Length",  # X-axis label
     ylab = "Petal Length",  # Y-axis label
     main = "Scatterplot of Sepal Length vs Petal Length",  # Title
     pch = 19,  # Plotting symbol (solid circle)
     col = "blue")  # Color of points

# 3. Save the plot as a high-resolution PNG image
png("scatterplot_sepal_petal.png", width = 2000, height = 2000, res = 300)
plot(iris$Sepal.Length, iris$Petal.Length,
     xlab = "Sepal Length",  # X-axis label
     ylab = "Petal Length",  # Y-axis label
     main = "Scatterplot of Sepal Length vs Petal Length",  # Title
     pch = 19,  # Plotting symbol
     col = "blue")  # Color of points
dev.off()  # Close the PNG device

