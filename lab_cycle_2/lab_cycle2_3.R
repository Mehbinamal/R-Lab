# 1. Load the mtcars dataset (already available in R)
data(mtcars)

# 2. Create a bar plot of the number of cylinders (cyl)
# First, we need to count the number of cars per cylinder value.
cyl_count <- table(mtcars$cyl)

# 3. Plot the bar plot with different colors based on transmission type (am)
# We can use a table to get the count of each (cyl, am) combination.
am_count <- table(mtcars$cyl, mtcars$am)

# Bar plot: using stacked bars to represent transmission type (am)
barplot(am_count,
        beside = FALSE,  # Stack the bars
        col = c("lightblue", "orange"),  # Colors for each transmission type
        legend = c("Automatic", "Manual"),  # Labels for the legend
        main = "Bar Plot of Cylinders and Transmission Type in mtcars",  # Title
        xlab = "Number of Cylinders",  # X-axis label
        ylab = "Count of Cars",  # Y-axis label
        args.legend = list(title = "Transmission Type"))  # Legend title
