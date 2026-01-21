# Function to generate Fibonacci sequence
generate_fibonacci <- function(n) {
  fib_seq <- numeric(n)
  fib_seq[1] <- 0
  if (n > 1) fib_seq[2] <- 1
  
  for (i in 3:n) {
    fib_seq[i] <- fib_seq[i - 1] + fib_seq[i - 2]
  }
  
  for (i in 1:n) {
    print(fib_seq[i])
  }
}

# Test cases
generate_fibonacci(5)
generate_fibonacci(10)
generate_fibonacci(20)
