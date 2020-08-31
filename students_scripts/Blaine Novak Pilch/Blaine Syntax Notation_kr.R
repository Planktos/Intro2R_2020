#Exercise 1: syntax and notation

#1) create 3 objects and assign values to them

O1=1
O2=2
O3=3


#2) what operators are you not allowed to use in object names?

#You cannot use operators that are a part of functions/commands such as !, ^, +, /, *, $, and @.


#3) create a vector object with 10 numbers assigned to it

VO=c(1,2,3,4,5,6,7,8,9,10)


#4) what function would you use to find the number of values assigned to a vector object

#I would use the length function.

length(VO)

#5) is 'R' case-sensitive language? Y/N?
#Yes

#6) if you type in a command and 'R' returns a '+' sign, then what does that error mean?
#The error indicates that your code wasn't finished, and that R is still waiting for additional information.

#7) demonstrate the two ways you can assign a sequence of numbers to a vector object

SO1=1:100
SO2= seq(2, 32, 2)

#8) please provide the commands that will show the data type of the following objects:

  a <- 5

  class(a)

  b <- 7L

  class(b)

  c <- "giraffe"

  class(c)

  d <- c(FALSE,TRUE,FALSE)

  class(d)

#9) create 2 objects and assign each 5 values

  FO1=c(1,2,3,4,5)
  FO2=c(6,7,8,9,10)

  # using these two objects:

  #9a) perform addition. How does 'R' match up the values between the two vectors?

  FO1+FO2
  #R matches up the values that line up with each other as vectors so the first numbers are added together followed by the second numbers, etc.

  #9b) perform inner and outer multiplication
  FO1%*%FO2
  FO1%o%FO2


#10) create 2 objects, assign one with 4 values and the other with 3 values

  O4=c(1,2,3,4)
  O3=c(1,2,3)

  # using these two objects:

  #10a) perform addition. How does 'R' match up the values between the two vectors?
    O4+O3
    #R will take the last number in the 4 valued object and add it to the first value of the 3 valued object.

  #10b) 'R' will generate a warning message when you perform this operation. Why is that?
    #R is generating a warning sign because the length of the two objects is unequal and is assuming that we want to add the last value of the first object with the first value of the last object, because we did not specify what we want R to do with the last value.


#11) peform outer multiplication on 2 objects that have equal lenghths (i.e., the same numbe of values assigned to them)

    O4%o%O3

  #11a) assign the output to a new object
    O5=O4%o%O3

  #11b) extract the value in the third row and second column
    O5[3,2]

#12) round the following vector to the nearest 0.1 decimal place

  lemon <- pi
  round(lemon, 1)

#13) find the mean of the following numbers: 0.5, 1.618, 4 (hint: you will need to assign to a vector object first)

MO=c(0.5, 1.618, 4)
mean(MO)

#14) create a die with six sides and sample it with and without replacement. what is the difference between the two methods?

die=c(1,2,3,4,5,6)
sample(die, replace = FALSE)
sample(die, replace = TRUE)
#When replacement is TRUE the sampling can sample the same die number multiple times.

#15) what is one way you can ask for help with a function within 'R Studio'?
  #By placing a "?" in front of the function. Ex. ?c