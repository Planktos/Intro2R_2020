#Exercise #6

#Practice the following skills:
  # write your own functions
  # if_else statements

#Part 1: writing custom functions ---

#1) Generate a function to convert from degrees Fahrenheit to degrees Celcius.
  # Demonstrate its utility using an input value of 98.6 deg F.

#2) Generate a function to convert from degrees Fahrenheit to degrees Kelvin.
  # Demonstrate its utility using an input value of 98.6 deg F.

#3) Scenario: You used an instrument that was not calibrated correctly and its 'blank' value consistent reads 0.05.
  # You need to correct your output values using the instruments linear calibration curve and the constant offset value.
  # Please write a custom function assuming the calibration equation slope = 3.5. A perfect calibration would have a y-intercept = 0.

  # Output values to use:
  o <- round(seq(1,20,2^0.5),2)

# 4) Using the "little_fish.Rdata" data set included in the files for this assignment, please write a custom function
  # to convert the values in the 'parcel.density.m3' column from individuals per cubic meter (current unit) to
  # individuals per 1000 cubic meters. Save the converted values as a new column in the 'little fish' data frame.


#5) Using the "little_fish.Rdata" data set, please write a custom function to convert
  # the decimal degree values in the following columns to this format

   # "deg° min' sec" [NWES]
   # 30°40'25" N

   # columns:
    # parcel.start.lat
    # parcel.start.lon
    # parcel.end.lat
    # parcel.end.lon

#Part 2: if_else statements-----

# one condition
# 6) generate an if_else statment to test if the value of a numeric object is positive number


# 7) using the two objects below, please generate an if_else statement that uses logical operator (i.e, !=, ==, >, etc.)
  # in the test

    x <- 5
    y <- 8

# 8) Hamlet's quandry: In Shakespeare's play Hamlet, the lead character has a famous speech "to be or not to be".
browseURL("https://www.poetryfoundation.org/poems/56965/speech-to-be-or-not-to-be-that-is-the-question")
# Write an if_else statement using the "to be' or 'not to be' for outcomes of the 'yes' and 'no' arguments respectively.

#two or more conditions
#9) create an 'if else' statement that returns (in order of preference) your four ideal pizza toppings


#two or more conditions joined (new content)
#To join two or more conditions into a single if statement, use logical operators viz. && (and), || (or) and ! (not).

  #example:
  x <- 7
  y <- 5
  z <- 2
  if(x > y && x > z) {
    print("x is greater")
  }

#10) generate your own 'if' statement using multiple conditions in one line



#New content: understanding a common warning/error message when using if_else.
# The follow set of code will generate a warning message. Explain in a comment what the warning is telling you.
  v <- 1:6

  if(v %% 2) {
    print("odd")
  } else {
    print("even")
  }

