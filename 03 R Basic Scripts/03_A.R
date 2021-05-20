# author: "Harshita Singh"
## Run the code in console.

# Write a menu driven code in R which will read a number and should implement the following methods
# 1. factorial()
# 2. reverse()
# 3. testArmstrong()
# 4. testPalindrome()
# 5. testPrime()



# Reverse Number
reverse <- function(x) {
  n <- trunc(log10(x)) # now many powers of 10 are we dealing with 
  x.rem <- x # the remaining numbers to be reversed 
  x.out <- 0 # stores the output 
  for(i in n:0){
    x.out <- x.out + (x.rem %/% 10^i)*10^(n-i) # multiply and add 
    x.rem <- x.rem - (x.rem %/% 10^i)*10^i # multiply and subtract 
  } 
  return(x.out)
}

# Tests whether the number is armstrong or not
# Returns boolean
testArmstrong <- function(n) {
  x <- n
  sum <- 0
  while (n != 0) {
    remainder <- n%%10
    sum <- sum + (remainder^3)
    n <- n%/%10
  }
  
  return(sum == x)
}


# Tests whether the number is palindrome or not
# Returns boolean
testPalindrome <- function(n) {
  return(reverse(n) == n)
}



# Returns the factorial of the number
findFactorial <- function(n) {
  return (factorial(n))
}



# Tests whether the number is a prime number or not
# Returns boolean
testPrime <- function(n) {
  if (n!=0 && (n == 1 || n == 2 || n == 3)) {
    return(TRUE)
  }
  
  if (n < 1) {
    return(NaN)
  }
  
  flag = 1
  for(i in 2:(n-1)) {
    if (n%%i == 0) {
      flag = 0
      break
    }
  }
  
  if (flag) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}



while (TRUE) {
  # Menu
  cat("Menu :
    1. Factorial
    2. Reverse
    3. Test Armstrong
    4. Test Palindorome
    5. Test Prime
    Enter your choice :
  ")
  choice <- scan()
  
  
  if (choice == 0) {
    break
  } 
  
  # Input number
  print("Enter number : ")
  n <- scan()
  
  if (choice == 1) {
    # Find factorial
    cat(findFactorial(n), "\n")
    
  } else if (choice == 2) {
    # Find reverse
    cat(reverse(n), "\n")
    
  } else if (choice == 3) {
    # Test Armstrong
    cat(testArmstrong(n), "\n")
    
  } else if (choice == 4) {
    # Test Palindrome
    cat(testPalindrome(n), "\n")
    
  } else if (choice == 5) {
    # Test Prime
    cat(testPrime(n), "\n")
    
  } else {
    print("Wrong choice! Please try again!")
  }
}