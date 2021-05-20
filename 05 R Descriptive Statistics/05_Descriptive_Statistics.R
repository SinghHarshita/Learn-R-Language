# 
# Author : Harshita Singh
# Date : 18-04-2021
#
# Descriptive Statistics in R
#
#

# str() Function
cat("\nThe str() function takes a single object as an argument and compactly shows us the structure of the input object. \nIt shows us details like length, data type, names and other specifics about the components of the object.\n")
str(mtcars)

# summary()
cat("\n\nThe summary() function also takes a single object as an argument.
It then returns the averages measures like mean, median, minimum, maximum, 1st quantile, 3rd quantile, etc. 
for each component or variable in the object.\n\n")
summary(mtcars)

# sum(), length()
cat("\n\nThe sum of a variable can be found with the sum function, and 
the number of observations can be found with the length function.\n\n sum(mtcars)", 
sum(mtcars), "\nlength(mtcars)", length(mtcars))

# mean()
cat("\n\nThe mean of a given set of numeric or logical values(it may be a vector or a row or column of any 
other data structure) can be easily found using the mean() function.\n")
mean(mtcars$mpg)


# median()
cat("\n\nFinding the median of a set of numeric or logical values is also very easy by using the median() function.\n")
median(mtcars$mpg)

# sd()
cat("\n\nThe standard deviation of a set of numerical values can be found using the sd() function.\n")
sd(mtcars$cyl)

# var()
cat("\n\nthe var() function gives us the variance of a set of numeric or logical values.\n")
var(mtcars$cyl)

# mad()
cat("\n\nThe median absolute variance of a set of numeric or logical values can be found by using the mad() function.")
mad(mtcars$cyl)

# max()
cat("\n\nThe max() function to find the maximum or the largest value in the set.\n max()\n")
max(mtcars$mpg)

# min()
cat("\n\nThe min() function is a very handy way to find out the smallest value in a set of numeric values.\nmin()\n")
min(mtcars$mpg)

# Standard error of the mean
cat("\n\nStandard error of the mean\n")
sd(mtcars$mpg)/sqrt(length(mtcars$mpg))

# quantile()
cat("First Quartile :", quantile(mtcars$mpg, 0.25),
    "\nSecond Quartile :", quantile(mtcars$mpg, 0.5),
    "\nThrid Quartile :", quantile(mtcars$mpg, 0.75),
    "\nFourth Decile :", quantile(mtcars$mpg, 0.4),
    "\n98th Percentile :", quantile(mtcars$mpg, 0.98))

# IQR()
cat("\n\nThe interquartile range (i.e., the difference between the first and third quartile) can be 
computed with the IQR() function\n", IQR(mtcars$mpg))

# lapply()
cat("\n\nto compute the standard deviation (or variance) of multiple variables at the same time, 
use lapply() with the appropriate statistics as second argument.\n lapply(mtcars[, 1:4], sd)\n")
lapply(mtcars[, 1:4], sd)

# Package pastecs
library("pastecs")
cat("\n\nLibrary pastecs")
stat.desc(mtcars)

# Coefficient of variation
cat("\n\nCoefficient of variation\n")
sd(mtcars$mpg) / mean(mtcars$mpg)

# Mode
library(modeest)
cat("\n\nMode\n")
mfv(mtcars$mpg)

# rowMeans()
cat("\n\nThe rowMeans() function, as the name suggests, returns the mean of a selected row of a data structure.\n")
rowMeans(mtcars[3,])

# rowSums()
cat("\n\nThe rowSums() function finds the sum of a selected row of a data structure.\n")
rowSums(mtcars[3,])

# colMeans()
cat("\n\nThe colMeans() function returns the mean of a selected column of a data structure.\n")
colMeans(mtcars)

# colSums()
cat("\n\nThe colSums() function calculate the sum of a selected column of a data structure.\n")
colSums(mtcars)

