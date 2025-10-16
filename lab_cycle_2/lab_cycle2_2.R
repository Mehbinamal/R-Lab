# 1. Load the mtcars dataset (already available in R)
data(mtcars)

# 2. Create a scatterplot with different colors based on cyl
plot(mtcars$disp, mtcars$mpg,
     col = as.factor(mtcars$cyl),  # Different colors for cyl
     xlab = "Displacement (disp)",  # X-axis label
     ylab = "Miles Per Gallon (mpg)",  # Y-axis label
     main = "Scatterplot of MPG vs Displacement with Cylinders",  # Title
     pch = 19)  # Solid circle for points

# 3. Add a smooth trend line
lines(lowess(mtcars$disp, mtcars$mpg), col = "black", lwd = 2)  # Lowess line (smoothed trend)

# 4. Add a legend
legend("topright", legend = levels(as.factor(mtcars$cyl)),
       col = 1:length(unique(mtcars$cyl)), pch = 19, title = "Cylinders")


