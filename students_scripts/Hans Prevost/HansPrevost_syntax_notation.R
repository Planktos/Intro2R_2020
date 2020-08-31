#Exercise 1: syntax and notation

#1) create 3 objects and assign values to them
a = 1
b = 2
c = 3

#2) what operators are you not allowed to use in object names?
#@, ^, $, !, +, -, /, *

#3) create a vector object with 10 numbers assigned to it
d = c(1:10)

#4) what function would you use to find the number of values assigned to a vector object
length(d)
#10

#5) is 'R' case-sensitive language? Y/N?
#yes

#6) if you type in a command and 'R' returns a '+' sign, then what does that error mean?
#R is waiting for something else to be added 

#7) demonstrate the two ways you can assign a sequence of numbers to a vector object
e = c(1, 2, 3)
f <- c(4, 5, 6)

#or

q = c(1:5)
v <- c(1, 2, 3, 4, 5)
#the question was a little vague, so I left answers for the two ways i interpreted the question. 

#8) please provide the commands that will show the data type of the following objects:

  a <- 5
  class(a)
  #[1] "numeric"
  b <- 7L
  class(b)
  #[1] "integer"
  c <- "giraffe"
  class(c)
  #[1] "character"
  d <- c(FALSE,TRUE,FALSE)
  class(d)
  #[1] "logical"
  
#9) create 2 objects and assign each 5 values
h = c(7, 8, 9, 10, 11)
i = c(11, 12, 13, 14, 15)
  # using these two objects:
  
  #9a) perform addition. How does 'R' match up the values between the two vectors?
  h + i
  #[1] 18 20 22 24 26
  # R matches up the numbers in sequence, as in the first number of vector h is added to the first number in vector i, etc. 
  
  #9b) perform inner and outer multiplication
  h %*% i
  [,1]
  [1,]  595
  
  h %o% i
        [,1] [,2] [,3] [,4] [,5]
  [1,]   77   84   91   98  105
  [2,]   88   96  104  112  120
  [3,]   99  108  117  126  135
  [4,]  110  120  130  140  150
  [5,]  121  132  143  154  165
  
#10) create 2 objects, assign one with 4 values and the other with 3 values
  j = c(1, 2, 3, 4)
  k = c(8, 5, 4)
  # using these two objects:
  
  #10a) perform addition. How does 'R' match up the values between the two vectors?
  j + k
  #10b) 'R' will generate a warning message when you perform this operation. Why is that?
  #because the longer object length is not a multiple of shorter object length, it cant properly add them together

#11) peform outer multiplication on 2 objects that have equal lenghths (i.e., the same numbe of values assigned to them)
  e %o% f
  #11a) assign the output to a new object
  z <- c(e %o% f)
  y <- matrix(z, nrow = 3)
  print(y)
        [,1] [,2] [,3]
  [1,]    4    5    6
  [2,]    8   10   12
  [3,]   12   15   18
  #11b) extract the value in the third row and second column
  print(y[3, 2])
  y[3, 2]
  #[1] 15
  
#12) round the following vector to the nearest 0.1 decimal place
  
  lemon <- pi
  round(lemon, digits = 1)
  #[1] 3.1
  
#13) find the mean of the following numbers: 0.5, 1.618, 4 (hint: you will need to assign to a vector object first)
 g = c(0.5, 1.618, 4)
 mean(g)
 #2.039333
#14) create a die with six sides and sample it with and without replacement. what is the difference between the two methods?
  die = c(1:6)
  sample(die, size = 2, replace = TRUE)
  #[1] 2 6
  sample(die, size = 2, replace = FALSE)
  #[1] 6 4
  #replacement replaces the outcome in the sample space when sampling again, non-replacement does not replace the outcome, so there is no chance of picking that outcome in the second sample. 
  
#15) what is one way you can ask for help with a function within 'R Studio'?
  #? then function name, example:
  ?sample 
  