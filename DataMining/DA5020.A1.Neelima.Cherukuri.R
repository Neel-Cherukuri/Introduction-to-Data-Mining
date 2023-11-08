#Title : Assignment 1
#Date : 5/15/2022
#Author : Neelima Cherukuri

library(ggplot2)

#Question 1
# Data Frame : Data.Frame is used to store data in R.Data.Frame() function is used to create dataframes
#Creating the data frame.
student.data <- data.frame(student_id = c(1:3),
                           student_name = c("Neel","Harsha","Sravanti"),
                           student_section = c(1,2,3))

student.data

#Question 2

#Creating a data frame with 3 variables
df <- data.frame(cars = c("Truck","Car","SUV"),
                 mpg= c(11,30,24),
                 cost = c(45000,25000,35000))
df

#Question 2a

# selecting row 1 in column 3
df[1,3]
#selecting row 1 through 3
df[1:3]
#selecting last column
df[,3]

#question 3

#Displaying first 3 rows using head and last 5 rows using tail by using the in built data "mtcars"

#Using head
head(mtcars, 3)
#Using tail
tail(mtcars, 5)

#question 4

#displaying column names of two categorical variables

Categoricalvariables <- "cyl, gear"
Categoricalvariables

#displaying column names of two continous variables

Continuousvariables <- "mpg, displ"
Continuousvariables


# question 5



#Executing the code given in R studio
ggplot(mtcars, aes(x=disp, y=mpg))

#the code gives an empty plot, because there are no geom point added, so it does not explain any relationship between disp and mpg
#Now by adding geom 
ggplot(mtcars, aes(x=disp, y=mpg))+
  geom_point()

#question 6

#Creating a scatterplot showing the relationship between displ and hwy, and color each point based on the number of cylinders

ggplot(data = mpg)+
  geom_point(mapping=aes(x= displ, y= hwy, color=cyl))

#Explanation

# The scatterplot explains the relationship between hwy(highway miles per gallon)
# and displ(engine displacement, in litres)

#question 7

#Adding facet_wrap using the drv column for 6 question
ggplot(data = mpg)+
  geom_point(mapping=aes(x= displ, y= hwy, color=cyl))+
  facet_wrap(~drv)

#Explanation:
# For rear-wheel-drive vehicles, the displacement is greater than 3 and the highway mileage per gallon is less than 30, indicating that this type of vehicle has a high displacement but low mileage,
# whereas for 4wd vehicles, as the displacement increases, the highway mileage per gallon decreases and the mileage is less than 30. 
# Front-wheel-drive vehicles typically have a displacement of 1 to 4, and vehicles with low displacement have high mileage.
