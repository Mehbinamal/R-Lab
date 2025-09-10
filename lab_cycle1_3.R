# Function to validate age
validate_age <- function(age) {
  # Check if the age is a positive integer
  return(!is.na(as.integer(age)) && as.integer(age) > 0)
}

# Function to validate grade
validate_grade <- function(grade) {
  # Check if the grade is one of A, B, C, D, or F
  valid_grades <- c("A", "B", "C", "D", "F")
  return(grade %in% valid_grades)
}

# Function to calculate the average age
calculate_average_age <- function(ages) {
  valid_ages <- ages[!is.na(ages)]
  return(mean(valid_ages))
}

# Main function to process student records
process_students <- function() {
  # Initialize empty vectors to store valid records
  valid_ages <- c()
  valid_grades <- c()
  
  # Number of students
  num_students <- as.integer(readline(prompt = "Enter the number of students: "))
  
  for (i in 1:num_students) {
    # Read student data
    name <- readline(prompt = paste("Enter the name of student", i, ": "))
    age <- as.integer(readline(prompt = paste("Enter the age of", name, ": ")))
    grade <- toupper(readline(prompt = paste("Enter the grade of", name, " (A, B, C, D, F): ")))
    
    # Validate the age and grade
    if (validate_age(age) && validate_grade(grade)) {
      valid_ages <- c(valid_ages, age)
      valid_grades <- c(valid_grades, grade)
      cat(paste(name, "has a valid record.\n"))
    } else {
      cat(paste(name, "has an invalid record.\n"))
    }
  }
  
  # Calculate and display average age of valid students
  if (length(valid_ages) > 0) {
    average_age <- calculate_average_age(valid_ages)
    cat("The average age of students with valid records is:", average_age, "\n")
  } else {
    cat("No valid student records found.\n")
  }
}

# Call the main function to start processing
process_students()
