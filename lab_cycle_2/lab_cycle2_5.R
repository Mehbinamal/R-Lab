# 1. Load the mtcars dataset (already available in R)
data(mtcars)

# 2. Create the box plot of horsepower (hp) grouped by number of gears (gear)
boxplot(hp ~ factor(gear), data = mtcars,
        col = c("lightblue", "lightgreen", "lightpink"),  # Different colors for each gear
        pch = c(16, 17, 18),  # Different shapes for each gear
        main = "Box Plot of Horsepower by Number of Gears",  # Title
        xlab = "Number of Gears",  # X-axis label
        ylab = "Horsepower (hp)",  # Y-axis label
        border = "blue",  # Border color
        notch = TRUE,  # Display notched box plot
        outline = TRUE)  # Show outliers

# 3. Identify and label outliers
outliers <- boxplot.stats(mtcars$hp)$out  # Extract outlier values

# 4. Add text labels for outliers on the plot
for (i in 1:length(outliers)) {
  outlier_pos <- which(mtcars$hp == outliers[i])  # Find the position of the outliers
  text(x = as.numeric(factor(mtcars$gear[outlier_pos])),  # X position based on gear
       y = outliers[i],  # Y position based on outlier value
       labels = round(outliers[i], 2),  # Label with rounded outlier value
       pos = 4, cex = 0.8, col = "red")  # Position and color of labels
}
