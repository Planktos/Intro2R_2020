#Exercise 1: syntax and notation

#1) create 3 objects and assign values to them
A<- 3
B<- 4
C<- "Hello"
#2) what operators are you not allowed to use in object names?
print ("if, else, repeat, while, function, for") 

#3) create a vector object with 10 numbers assigned to it
Students<- c(8,10,13,15,18,20,24,17,22,30)

#4) what function would you use to find the number of values assigned to a vector object
length(Students)

#5) is 'R' case-sensitive language? Y/N?
print ("Y")


#6) if you type in a command and 'R' returns a '+' sign, then what does that error mean?

print ("Enter additional information")
#7) demonstrate the two ways you can assign a sequence of numbers to a vector object
A<- (4:9); A
seq(1, 10, by=2.)

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
  
  Childrens<-c(4,5,7,9,2)
  Donuts <-c (2,4,5,6,8)

  # using these two objects:
  
  #9a) perform addition. How does 'R' match up the values between the two vectors?
  Childrens+Donuts
  #9b) perform inner and outer multiplication
  #inner multiplication
  Childrens%*%Donuts
  #outer multiplication
  Childrens%o%Donuts
  
#10) create 2 objects, assign one with 4 values and the other with 3 values
  
  # using these two objects:
  P<-c(11,23,12,20)
  Q<-c(10,12,14)
  #10a) perform addition. How does 'R' match up the values between the two vectors?
  P+Q
  #10b) 'R' will generate a warning message when you perform this operation. Why is that?
  Print ('longer object length is not a multiple of shorter object length ')
#11) peform outer multiplication on 2 objects that have equal lenghths (i.e., the same numbe of values assigned to them)
  A<-c(5,10,15,20)
  B<-c(5,10,15,20)
  A%o%B
  #11a) assign the output to a new object
  D<-A%o%B
  #11b) extract the value in the third row and second column
  D[3,2]
  
#12) round the following vector to the nearest 0.1 decimal place
  
  lemon <- pi
  round(lemon,digits = 1)
  
#13) find the mean of the following numbers: 0.5, 1.618, 4 (hint: you will need to assign to a vector object first)
  num1<-c(0.5,1.618,4)
  mean(num1)
#14) create a die with six sides and sample it with and without replacement. what is the difference between the two methods?
  
  
#15) what is one way you can ask for help with a function within 'R Studio'?
print ("help()/ ?")
  