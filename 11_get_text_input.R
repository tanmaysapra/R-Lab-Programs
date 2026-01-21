# Function to get text input from user
get_text_input <- function() {
  user_input <- readline(prompt = "Enter your input: ")
  return(user_input)
}

# Test cases
cat("Test Case 1:\n")
cat("User input:", get_text_input(), "\n\n")

cat("Test Case 2:\n")
cat("User input:", get_text_input(), "\n\n")

cat("Test Case 3:\n")
cat("User input:", get_text_input(), "\n\n")
