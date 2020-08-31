#Exercise 1: syntax and notation
#Julia Sweet
#8/25/2020

#1) create 3 objects and assign values to them
a<-21
b<-c(3,7,9)
c<-"julia"

#2) what operators are you not allowed to use in object names?
#You cannont use verbs or functions in your object names "!", "@", "$", "+", "-", "*", "/"


#3) create a vector object with 10 numbers assigned to it
d<-1:10


#4) what function would you use to find the number of values assigned to a vector object
#Use the command length to find the number of values assigned to a vector object
length(d)

#5) is 'R' case-sensitive language? Y/N?
#Yes, 'R' is a case-sensitive language.


#6) if you type in a command and 'R' returns a '+' sign, then what does that error mean?
# This error means that 'R' is waiting for more information. You did not provide adequate input for 'R' to complete the command. Either type the rest of your command or hit "escape" to start over


#7) demonstrate the two ways you can assign a sequence of numbers to a vector object
e<- c(2,4,5,6,7) #Manualy selected collated vector
f<- seq(1,12,2)  #Creates a sequence from 1 to 12 by 2's


#8) please provide the commands that will show the data type of the following objects:
#Structure and typeof, are the commands that will show the data type

  g <- 5
  str(g)
  typeof(g)
  
  h <- 7L
  str(h)
  typeof(h)
  
  i <- "giraffe"
  str(i)
  typeof(i)
  
  j <- c(FALSE,TRUE,FALSE)
  str(j)
  typeof(j)
  
#9) create 2 objects and assign each 5 values
  k<-c(1,2,3,4,5)
  l<-c(6,7,8,9,10)

  # using these two objects:
  
  #9a) perform addition. How does 'R' match up the values between the two vectors?
  k+l
  #returns answer [1]  7  9 11 13 15
  #'R' uses element-wise execution, matching up the elements of the two vectors and adding them together 
  
  #9b) perform inner and outer multiplication
  #inner mulitplication
  k%*%l
  #returns answer     
  #      [,1]
  # [1,]  130
  
  #outer multiplication
  k%o%l
  #returns answer  
  #[,1] [,2] [,3] [,4] [,5]
  #[1,]    6    7    8    9   10
  #[2,]   12   14   16   18   20
  #[3,]   18   21   24   27   30
  #[4,]   24   28   32   36   40
  #[5,]   30   35   40   45   50
  
#10) create 2 objects, assign one with 4 values and the other with 3 values
  m<-c(1,2,3)
  n<-c(4,5,6,7)
  
  # using these two objects:
  
  #10a) perform addition. How does 'R' match up the values between the two vectors?
  m+n
  #'R' matched up elementwise, and then since these two vectors are different lengths, it starts over again until it reached the end of the longer vector.

  #So for the above example it adds the first elements together (1+4), then the second elements together (2+5), then the third elements together (3+6), then the fourth and first elements together (7+1)
  
  
  #10b) 'R' will generate a warning message when you perform this operation. Why is that?
  # This is because the two vectors are not equal lengths, and the shorter one is not a mutiple of the longer one.
  
#11) peform outer multiplication on 2 objects that have equal lenghths (i.e., the same numbe of values assigned to them)
  b%o%m
  
  #11a) assign the output to a new object
  df<-b%o%m
  #Returns the following matrix
  #    [,1] [,2] [,3]
  #[1,]    3    6    9
  #[2,]    7   14   21
  #[3,]    9   18   27
  
  #11b) extract the value in the third row and second column
  df[3,2]
  #Returns the value 18
  
  
#12) round the following vector to the nearest 0.1 decimal place
  
  lemon <- pi
  round(lemon,1)
  
#13) find the mean of the following numbers: 0.5, 1.618, 4 (hint: you will need to assign to a vector object first)
  o<- c(0.5,1.618,4)
  mean(o)
  
#14) create a die with six sides and sample it with and without replacement. what is the difference between the two methods?
  die<-1:6
  sample(die,1) # 1 number from die without replacement
  sample(die,2) # 2 numbers from die without replacement
  sample(die,2,replace = T) # 2 numbers from die WITH replacement
  
  #Without replacement, means that whatever number is selected will be removed from the pool permanently and connot be selected again. With replacement means that the number goes back into the pool after being selected and is available to be drawn a second time.
  
#15) what is one way you can ask for help with a function within 'R Studio'?
  # To get help with a function put ? before function (?sample) this includes example on how to use the function 
  
  #Two questionmarks goes to the internet to expand the search (??ddply)