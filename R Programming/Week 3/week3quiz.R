#Question 1
library(datasets)
data(iris)
mean(iris[iris$Species == 'virginica','Sepal.Length'])

#Question 2
apply(iris[,1:4],2,mean)

#Question 3
library(datasets)
data(mtcars)
tapply(mtcars$mpg,mtcars$cyl,mean)

#Question 4
tapply(mtcars$hp,mtcars$cyl,mean)
82.63636 - 209.21429
