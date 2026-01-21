# Function to check whether a number is odd or even
check_odd_even <- function(number) {
  if (number %% 2 == 0) {
    return("The number is even.")
  } else {
    return("The number is odd.")
  }
}

# Test cases
print(check_odd_even(4))
print(check_odd_even(7))
print(check_odd_even(0))
print(check_odd_even(-10))
print(check_odd_even(-3))
