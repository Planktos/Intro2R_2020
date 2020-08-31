z <- 1
x <- 2
r <- 3

@, ^, !, $, +, -, /, *

s <- c(2,3,4,5,6,7,8,9,1) # length is 9, not 10; -0.5 point

length(d) #the command is correct but the object 'd' does not exist; -1 point

Y

#It means you have typed an incomplete command

k <-c(1:9)
m <-seq(1,9)

a <-5
mode(a)
b <-7L
mode(b) #what type of number is object 'b'?
c <- "giraffe"
mode(c)
d <-c(FALSE,TRUE,FALSE)
mode(d)

t <-c(5,6,7,8,9)
v <-c(1,2,3,4,0)
t + v
#It matches up the values between the vectors via element-wise operations. it matches up vectors and adds the first element of the first vector by the first element of the second vector, and so on.
t %*% v
t %o% v

e <-c(3,4,5,6)
f <-c(8,9,0)
e + f
#The warning was generated because the two vectors are of unequal lengths and therefore it is unable to perform element-wise operations

p <-c(1,2,3,4,5)
q <-c(6,7,8,9,0)
p %o% q
dt <- p %o% q
dt [3,2]
lemon <- pi
round(lemon, 0.1) #close but if you run it the value returned is '3'. Looking for 3.1; -0.5 pt
#correction
round(x = lemon, digits = 1)

g <-c(0.5,1.618,4)
mean(g)

die <-c(1:6)
sample(die,3,T)
sample(die,3,)
#The difference between the two methods is that after sampling with a particular value it replaces the value after each draw for sampling with replacement unlike for sampling without replacement where the value isn't returned to be possibly drawn again.

??sample

