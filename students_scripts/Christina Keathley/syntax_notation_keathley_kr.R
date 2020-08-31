#Exercise 1: syntax and notation

#1) create 3 objects and assign values to them
d=1
z=2
q=3

#2) what operators are you not allowed to use in object names?
#You should not use names that are commands in R, but you should also not use "@," "!," and "$"
#correction: yes, you named a few; others include "^, +, *, /"; -0.5 points

#3) create a vector object with 10 numbers assigned to it
e=1:10

 #4) what function would you use to find the number of values assigned to a vector object
length(e)

#5) is 'R' case-sensitive language? Y/N?
#Yes

#6) if you type in a command and 'R' returns a '+' sign, then what does that error mean?
#R is telling you that you have not finished your request, so it does not know what to return

#7) demonstrate the two ways you can assign a sequence of numbers to a vector object
f=1:4
g<-c(1,2,3,4)

#8) please provide the commands that will show the data type of the following objects:

  a <- 5
  typeof(a)
  #double

  b <- 7L
  typeof(b)
  #integer

  c <- "giraffe"
  typeof(c)
  #character

  d <- c(FALSE,TRUE,FALSE)
  typeof(d)
  #logical

#9) create 2 objects and assign each 5 values
aa=c(1,2,3,4,5)
bb=c(6,7,8,9,10)

# using these two objects:

  #9a) perform addition. How does 'R' match up the values between the two vectors?
  aa+bb
  #7, 9, 11, 13, 15
  #It is adding the first number of "aa" to the first number of "bb," then the second to the second, etc.

  #9b) perform inner and outer multiplication
  #inner:
  aa%*%bb
    #=130
  #outer:
  aa%o%bb
    #run to see matrix

#10) create 2 objects, assign one with 4 values and the other with 3 values
cc=c(4,8,12,16)
dd=c(2,4,6)

  # using these two objects:

  #10a) perform addition. How does 'R' match up the values between the two vectors?
  cc+dd
  #It doesn't.

  #10b) 'R' will generate a warning message when you perform this operation. Why is that?
  #R does not know how to add these vectors together because the lengths do not match. Vectors either need to
  #be the same length or they need to be divisible of each other.


#11) peform outer multiplication on 2 objects that have equal lenghths (i.e., the same numbe of values assigned to them)
  aa%o%bb

  #11a) assign the output to a new object
  ee=aa%o%bb

  #11b) extract the value in the third row and second column
  ee[3,2]
  #=21

#12) round the following vector to the nearest 0.1 decimal place

  lemon <- pi
  round(lemon,1)

#13) find the mean of the following numbers: 0.5, 1.618, 4 (hint: you will need to assign to a vector object first)
  w=c(0.5,1.618,4)
  mean(w)
  #=2.03933

#14) create a die with six sides and sample it with and without replacement. what is the difference between the two methods?
  die=1:6
  sample(die,2)
  #sample without replacement means that you will not return the same number twice. Sample with replacement means
  #you may return the same number more than once, as it can select from that number again.

#15) what is one way you can ask for help with a function within 'R Studio'?
  #Place a question mark before a function, such as "?mean"