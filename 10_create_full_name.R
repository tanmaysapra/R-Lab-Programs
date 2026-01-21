# Function to create full name
make_full_name <- function(first_name, last_name) {
  return(paste(first_name, last_name))
}

# Test cases
name1 <- make_full_name("John", "Doe")
name2 <- make_full_name("Alice", "Smith")
name3 <- make_full_name("Rahul", "Sharma")
name4 <- make_full_name("Emily", "Blunt")

# Print results
cat("Full name for John and Doe:", name1, "\n")
cat("Full name for Alice and Smith:", name2, "\n")
cat("Full name for Rahul and Sharma:", name3, "\n")
cat("Full name for Emily and Blunt:", name4, "\n")

