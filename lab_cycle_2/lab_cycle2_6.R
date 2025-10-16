# 1. Load the mtcars dataset (already available in R)
data(mtcars)

# 2. Create a scatter plot of disp (displacement) vs wt (weight)
# Map carburetors (carb) to both color and size
plot(mtcars$disp, mtcars$wt, 
     col = rainbow(length(unique(mtcars$carb)))[as.factor(mtcars$carb)],  # Color by carb
     pch = 16,  # Solid circle
     cex = 1.5,  # Default point size
     xlab = "Displacement (disp)",  # X-axis label
     ylab = "Weight (wt)",  # Y-axis label
     main = "Displacement vs Weight (Colored by Carburetors)",  # Title
     xlim = c(min(mtcars$disp) - 10, max(mtcars$disp) + 10),  # X-axis limits
     ylim = c(min(mtcars$wt) - 0.5, max(mtcars$wt) + 0.5))  # Y-axis limits

# 3. Add a smooth line to show the trend (linear model)
abline(lm(mtcars$wt ~ mtcars$disp), col = "blue", lwd = 2)  # Trend line (blue)

# 4. Add legend for the carburetors (carb)
legend("topright", 
       legend = unique(mtcars$carb),  # Unique carburetor values
       col = rainbow(length(unique(mtcars$carb))),  # Colors corresponding to carb values
       pch = 16,  # Solid circles
       title = "Carburetors",  # Legend title
       cex = 0.8)  # Smaller text in legend
