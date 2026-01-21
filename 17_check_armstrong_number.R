# Function to check Armstrong number
is_armstrong <- function(number) {
  digits <- as.integer(unlist(strsplit(as.character(number), "")))
  n <- length(digits)
  sum_of_powers <- sum(digits^n)
  
  if (sum_of_powers == number) {
    return("The number is an Armstrong number.")
  } else {
    return("The number is not an Armstrong number.")
  }
}

# Test cases
print(is_armstrong(153))
print(is_armstrong(123))
print(is_armstrong(1634))
print(is_armstrong(7))
