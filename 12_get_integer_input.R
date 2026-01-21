# Function to get integer input from user
get_integer_input <- function() {
  user_input <- readline(prompt = "Enter an integer: ")
  return(as.integer(user_input))
}

# Test cases
cat("Test Case 1:\n")
cat("Integer input:", get_integer_input(), "\n\n")

cat("Test Case 2:\n")
cat("Integer input:", get_integer_input(), "\n\n")

cat("Test Case 3:\n")
cat("Integer input:", get_integer_input(), "\n\n")
