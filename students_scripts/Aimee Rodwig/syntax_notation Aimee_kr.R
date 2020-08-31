#Exercise 1: syntax and notation

#1) create 3 objects and assign values to them
q = 2
r = 10
cat = 9

#2) what operators are you not allowed to use in object names?
#special characters like ! or $, they do specific operations

#correction: looking for ALL the 'no-no' characters, including "%; /, +, *"; -0.5 points

#3) create a vector object with 10 numbers assigned to it
numbahs = 3:12


#4) what function would you use to find the number of values assigned to a vector object
length(numbahs)

#5) is 'R' case-sensitive language? Y/N?
#not in general function names, but it is case sensitive for names of objects you name


#6) if you type in a command and 'R' returns a '+' sign, then what does that error mean?
#the plus sign means we have not given 'R' enough information to run what we intend
#and it is waiting for us


#7) demonstrate the two ways you can assign a sequence of numbers to a vector object
w = seq(1,18,3)
x = c(6,7,8,9,10)


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
  dog = 1:5
  fish = 6:10

  # using these two objects:

  #9a) perform addition. How does 'R' match up the values between the two vectors?
  dog + fish
  #correction: what is the answer to the second question?...element wise match-up; -0.5 points

  #9b) perform inner and outer multiplication
  dog%*%fish
  dog%o%fish


#10) create 2 objects, assign one with 4 values and the other with 3 values
  y = c(1,2,3,4)
  z = c(1,2,3)

  # using these two objects:

  #10a) perform addition. How does 'R' match up the values between the two vectors?
  y + z
  # 'R' wants to repeat the shortest vector in adding to the longer vector

  #10b) 'R' will generate a warning message when you perform this operation. Why is that?
  #these vectors have to be multiples of each other for the addition to work.
  #when they are not multiples of each other, an error is shown

#11) peform outer multiplication on 2 objects that have equal lenghths (i.e., the same numbe of values assigned to them)
  dogfish = dog%o%fish

  #11a) assign the output to a new object

  #11b) extract the value in the third row and second column
  dogfish[3,2]


#12) round the following vector to the nearest 0.1 decimal place

  lemon <- pi
round(lemon, 1)

#13) find the mean of the following numbers: 0.5, 1.618, 4 (hint: you will need to assign to a vector object first)
meannum = c(0.5, 1.618, 4)
mean(meannum)

#14) create a die with six sides and sample it with and without replacement. what is the difference between the two methods?
  die = 1:6
  sample(die,2)
  sample(die,2,TRUE)
  #replacement is the equivalent of putting the first number you get back in a bag to draw from
  #and it gives you a chance of pulling multiple of the same number

  #15) what is one way you can ask for help with a function within 'R Studio'?
  ?var
