# Function to get floating point input from user
get_float_input <- function() {
  user_input <- readline(prompt = "Enter a floating point number: ")
  return(as.numeric(user_input))
}

# Test cases
cat("Test Case 1:\n")
cat("Float input:", get_float_input(), "\n\n")

cat("Test Case 2:\n")
cat("Float input:", get_float_input(), "\n\n")

cat("Test Case 3:\n")
cat("Float input:", get_float_input(), "\n\n")
