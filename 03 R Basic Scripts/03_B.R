# author: "Harshita Singh"
## Run the code in console.

# Program to Display Fibonacci Sequence Using Recursion


# Recursive function for Fibonacci series
fibonacciSequence <- function(n) {
  
  if(n <= 1) {
    return(n)
    
  } 
  else {
    return(fibonacciSequence(n-1) + fibonacciSequence(n-2))
  }
  return(0)
}


# Input number of terms
print("How many terms? ")
n = scan()

# Checking if input is valid
if (n <= 0) {
  print("Enter a positive integer")
} else {
  # Fibonacci series
  
  for (i in 0:(n-1)) {
    cat(fibonacciSequence(i), "")
  }
}

