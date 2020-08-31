#Exercise 1: syntax and notation

#1) create 3 objects and assign values to them
p<-1
q<-2
r<-3

#2) what operators are you not allowed to use in object names?
^
!
$
+
-
@

  #3) create a vector object with 10 numbers assigned to it 
j<- c(1,2,3,4,5,6,7,8,9,0)

#4) what function would you use to find the number of values assigned to a vector object
length(d)

#5) is 'R' case-sensitive language? Y/N?

Y

#6) if you type in a command and 'R' returns a '+' sign, then what does that error mean?

# IF'R' returns a '+' sign, then this error means that wrong command is being given


#7) demonstrate the two ways you can assign a sequence of numbers to a vector object

x<-c (5:6)
y<-seq(5:6)



#8) please provide the commands that will show the data type of the following objects:

a <- 5

b <- 7L

c <- "giraffe"

d <- c(FALSE,TRUE,FALSE)

a <- 5
mode(a)
b <- 7L
mode(b)
c <- "giraffe"
mode(c)
d <- c(FALSE,TRUE,FALSE)
mode(d)

#9) create 2 objects and assign each 5 values

# using these two objects:

#9a) perform addition. How does 'R' match up the values between the two vectors?

#9b) perform inner and outer multiplication

m<- c(1,2,3,4,5)
n<- c(6,7,8,9,10)
m+n
#it matches the vectors and adds the first vectors of the first one & with the first of second one and so forth.

m %*% n
m %o% n

#10) create 2 objects, assign one with 4 values and the other with 3 values

# using these two objects:

#10a) perform addition. How does 'R' match up the values between the two vectors?

#10b) 'R' will generate a warning message when you perform this operation. Why is that?
g<- c(1,2,3,4)
h<- c(5,6,7)
g+h
#'R' will generate a warning message because values in the vectors are unequals and it can not add those

#11) peform outer multiplication on 2 objects that have equal lenghths (i.e., the same numbe of values assigned to them)

#11a) assign the output to a new object

#11b) extract the value in the third row and second column

a<- c(1,2,3,4,5,6)
b<- c(7,8,9,10,11,12)
a %o% b

dt<- a %o% b
dt[3,2]

#12) round the following vector to the nearest 0.1 decimal place

lemon <- pi
lemon <- pi
round(lemon,0.1)

#13) find the mean of the following numbers: 0.5, 1.618, 4 (hint: you will need to assign to a vector object first)

t<- c(0.5, 1.618, 4)
mean(t)


#14) create a die with six sides and sample it with and without replacement. what is the difference between the two methods?

die <-c(1:6)
sample(die,3,T)
sample(die,3)
--------
  
#15) what is one way you can ask for help with a function within 'R Studio'?

#using the stack overflow website


