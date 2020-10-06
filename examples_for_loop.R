# 'For Loop' Examples
# Author: Kelly Robinson

# A for loop is used to apply the same function calls to a collection of objects. R has a family of functions, 
# the 'apply' family, which can be used in much the same way. You’ve already used one of the family. 
# The 'apply' family members include
 
  # apply - apply over the margins of an array (e.g. the rows or columns of a matrix)
  # lapply - apply over an object and return list
  # sapply - apply over an object and return a simplified object (an array) if possible
  # vapply - similar to sapply but you specify the type of object returned by the iterations

  # Each of these has an argument FUN which takes a function to apply to each element of the object.

#Example 1 ------

  #write a 'for loop' to count the number of even numbers in a vector.
  x <- c(2,5,3,9,8,11,6)
  count <- 0
  
  for (val in x) {
    if(val %% 2 == 0)  count = count+1
  }
  print(count)
  
  # In the above example, the loop iterates 7 times as the vector x has 7 elements.
  # In each iteration, val takes on the value of corresponding element of x.
  # We have used a counter to count the number of even numbers in x. We can see that x contains 3 even numbers.
  
#Example 2 Create fruit vector -----
  
  fruit <- c('Apple', 'Orange', 'Passion fruit', 'Banana')
  # Create the for statement
  for ( i in fruit){ 
    print(i)
  }
  
#Example 3 ------
  
  # Create an empty list
  list <- c()
  # Create a for statement to populate the list
  for (i in seq(1, 4, by=1)) {
    list[[i]] <- i*i
  }
  print(list)

#Example 4 -----
  
  # Create a matrix
  mat <- matrix(data = seq(10, 20, by=1), nrow = 6, ncol =2)
  # Create the loop with r and c to iterate over the matrix
  for (r in 1:nrow(mat))   
    for (c in 1:ncol(mat))  
      print(paste("Row", r, "and column",c, "have values of", mat[r,c]))  
  
#Example 5 -----
  
  analyze2 <- function(filenames) {
    
    for (f in seq_along(filenames)) {
      fdata <- read.csv(filenames[f], header = FALSE)
      res <- apply(fdata, 2, mean)
      if (f == 1) {
        out <- res
      } else {
        # The loop is slowed by this call to cbind that grows the object
        out <- cbind(out, res)
      }
    }
    return(out)
  }