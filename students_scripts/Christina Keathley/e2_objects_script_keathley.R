#Exercise #2: objects

# 1) create an object that includes both numbers and character string
  a=c(1,2,3,"pirate")


# 2) create a vector object with 15 values. What happens when you set the length to 20?
  b=c(1:15)
  length(b)=20
  b
  #  Because these values did not exist or weren't assigned, R will assign them as "NA"


#3) create an object that includes a list and set recursive to 'TRUE'.
  d=c(1,2,3,4,list(1.11,2.22,3.33),recursive=TRUE)

## 3a) What is the difference if you set recursive to 'FALSE'?

  #  When recursive is set to TRUE, it means that R will portray the numbers within the object
  #  by the number of decimals assigned by the longest number. For instance, in an object with
  #  c=(1,2,list(4.444),recursive=TRUE), the numbers will be displayed back as 1.000, 2.000, 4.444
  #  as denoted by the TRUE and included number with three decimal places.
  #  if recursive is set to false, then R will display the items as a list with the values as they are written.
  #  In the example provided, it will be 1, 2, and 4.444.

#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.
  flowers=matrix(data=1:15,nrow=5,ncol=3,dimnames=list(c("spr","sum","fall","win","any"),c("purple","pink","red")))

##4a) Extract the value in the 2nd row and 1st column.
  flowers[2,]

#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.
  ray=array(data=1:72,dim=c(6,4,3),dimnames=list(c("kid_friendly","loner","senior","baby","special_needs","bites"),c("medical_observation","ready_adoption","incoming","terminate"),c("dog","cat","bird")))

##5a) Extract the value in the 3rd level, 4th row, and 2nd column.
  ray[4,2,3]

##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?
  ray[,2,1]

#6) What are the differences between a matrix and an array?

  #  An array has another dimension. I think of it like a filing system. A matrix is sheets of paper in a folder. 
  #  An array can then put those folders into filing drawers. It's an additional level of organization.

#7) run the following object and show me the code to what type and class of object it is.

m <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))
  typeof(m)
  class(m)

#8) What symbols are you not allowed to use in object names? Why not?

  #  ! is R's way of saying "Not", so it should not be used in names.
  #  ^ cannot be used in names because it raises a number to a power
  #  Other symbols not to be used in names: $ ("from"), @ (email)

#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.

  cartoons=data.frame(fry=c(1,2,3,4), leela=c(20,25,33,47), bender=c("bite","my","shiny","metal"), zoidberd=c("woop",2,3,4))
  
##9a) Assign the data in the data frame's third column to a new object.
  
  quote=cartoons[,3]

##9b) Assign the data in the data frames second row to a new object.

  nonsense=cartoons[2,]
  
#10) Explain the meme on this t-shirt.
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")

  #  When there is an exclamation point before on object, it means "not". Thus, "!false" literally translates to "true"

#11) Assign the formula for a linear regression to a new object.

  kittens=as.formula(y~m*x+b)
  puppies=kittens
  