# 1. Load the mtcars dataset (already available in R)
data(mtcars)

# 2. Calculate the mean and standard deviation of mpg
mean_mpg <- mean(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)

# 3. Create the histogram of mpg
hist(mtcars$mpg,
     breaks = 10,  # Number of bins
     col = rgb(0, 0, 1, alpha = 0.5),  # Light blue color for bars with transparency
     xlab = "Miles Per Gallon (mpg)",  # X-axis label
     ylab = "Frequency",  # Y-axis label
     main = "Histogram of Miles Per Gallon in mtcars",  # Title
     border = "blue",  # Border color for bars
     xlim = c(min(mtcars$mpg) - 2, max(mtcars$mpg) + 2)  # Adjust x-axis limits
)

# 4. Add a line for the mean mpg
abline(v = mean_mpg, col = "red", lwd = 2, lty = 2)  # Vertical line for mean (red, dashed)

# 5. Add text for mean and standard deviation on the plot
# Ensure the strings are properly closed and there are no missing quotation marks.
text(x = mean_mpg + 1, y = 5, labels = paste("Mean: ", round(mean_mpg, 2)), col = "red")
text(x = mean_mpg + 1, y = 4, labels = paste("SD: ", round(sd_mpg, 2)), col = "blue")
