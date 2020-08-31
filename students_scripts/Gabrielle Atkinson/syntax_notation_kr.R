#Exercise 1: syntax and notation

#1) create 3 objects and assign values to them
g=1
a=2
b=3
#2) what operators are you not allowed to use in object names?
#you can use anything in an object name but it is not recommended to
##use operators that already have a function in R

#3) create a vector object with 10 numbers assigned to it
y= 1:10

#4) what function would you use to find the number of values assigned to a vector object
length(y)

#5) is 'R' case-sensitive language? Y/N?
#yes

#6) if you type in a command and 'R' returns a '+' sign, then what does that error mean?
#there needs to be more added to the command, it's incomplete

#7) demonstrate the two ways you can assign a sequence of numbers to a vector object
t=seq(10,20,2)
k= c(10,12,14,16,18,20)

#8) please provide the commands that will show the data type of the following objects:

#comment-KR: please apply these commands (or whichever ones are appropriate for the question the next time a question like this shows up)

typeof()
str()
  a <- 5

  b <- 7L

   c <- "giraffe"

  d <- c(FALSE,TRUE,FALSE)

#9) create 2 objects and assign each 5 values
 i=c(1,2,3,4,5)
 n=c(6,7,8,9,10)


  # using these two objects:

  #9a) perform addition. How does 'R' match up the values between the two vectors?

  i+n #adds the first value of i to the first value of n and so on

  #9b) perform inner and outer multiplication
 i%*%n #inner multiplicaton

 i%o%n #outer multiplication

#10) create 2 objects, assign one with 4 values and the other with 3 values
  s=c(11,12,13,14)
  o=c(15,16,17)

  # using these two objects:

  #10a) perform addition. How does 'R' match up the values between the two vectors?
  s+o
#loops through values when it reaches the end of the shortest vector

  #10b) 'R' will generate a warning message when you perform this operation. Why is that?
#so you're aware the two aren't multiples and it needs to loop
##through the shortest length the multiply with the longer vector

#11) peform outer multiplication on 2 objects that have equal lenghths (i.e., the same numbe of values assigned to them)

  x=c(1,2,3)
  y=c(4,5,6)
  x%o%y

  #11a) assign the output to a new object

  z=x%o%y

  #11b) extract the value in the third row and second column

  z[3,2]

#12) round the following vector to the nearest 0.1 decimal place

  lemon <- pi
  round(lemon,1)

#13) find the mean of the following numbers: 0.5, 1.618, 4 (hint: you will need to assign to a vector object first)
a=c(0.5,1.618,4)
mean(a)

#14) create a die with six sides and sample it with and without replacement. what is the difference between the two methods?
 die=c(1,2,3,4,5,6)
sample(die,1) #without replacement
sample(die,1,replace=T) #with replacement
##with replacement allows you to draw the same number twice

#15) what is one way you can ask for help with a function within 'R Studio'?
#the question mark function

