# Function to calculate Body Mass Index
calculate_bmi <- function(height, weight) {
  return(weight / (height^2))
}

# Test cases
bmi1 <- calculate_bmi(1.75, 70)
bmi2 <- calculate_bmi(1.60, 60)
bmi3 <- calculate_bmi(1.80, 85)
bmi4 <- calculate_bmi(1.65, 50)

# Print results
cat("BMI for height 1.75m and weight 70kg:", bmi1, "\n")
cat("BMI for height 1.60m and weight 60kg:", bmi2, "\n")
cat("BMI for height 1.80m and weight 85kg:", bmi3, "\n")
cat("BMI for height 1.65m and weight 50kg:", bmi4, "\n")

