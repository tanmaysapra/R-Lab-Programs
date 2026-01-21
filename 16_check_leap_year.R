# Function to check leap year
is_leap_year <- function(year) {
  if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
    return("The year is a leap year.")
  } else {
    return("The year is not a leap year.")
  }
}

# Test cases
print(is_leap_year(2024))
print(is_leap_year(2023))
print(is_leap_year(2000))
print(is_leap_year(1900))


